module blackjack::single_player_blackjack {

    use sui::address;
    use sui::balance;
    use sui::balance::Balance;
    use sui::bls12381::bls12381_min_pk_verify;
    use sui::coin;
    use sui::coin::Coin;
    use sui::event;
    use sui::hash::blake2b256;
    use sui::object;
    use sui::sui::SUI;
    use sui::transfer;
    use blackjack::counter_nft::Counter;

    const STAKE: u64 = 200000000;

    const IN_PROGRESS: u8 = 0;
    const PLAYER_WON_STATUS: u8 =1;
    const HOUSE_WON_STATUS: u8 =2;
    const TIE_STATUS: u8 =3;

    const EInvalidBlsSig: u64 = 10;
    const EInsufficientBalance: u64 =11;
    const EInsufficientHouseBalance: u64 =12;
    const EGameHasFinished: u64 = 13;
    const EUnauthorizedPlayer: u64 =14;
    const EDealAlreadyHappend: u64 = 15;
    const EInvalidGameOfHitRequest: u64 =16;
    const EInvalidGameOfStandRequest: u64 =17;
    const EInvalidSumOfHitRequest: u64 = 18;
    const EInvalidSumOfStandRequest: u64 = 19;
    const EInvalidPlayerBetAmount: u64 = 20;
    const ECallerNotHouse: u64 =21;

    public struct GameCreatedEvent has copy, drop {
        game_id: ID,
    }

    public struct GameOutEvent has copy,drop {
        game_id: ID,
        game_status: u8,
        winner_address: address,
        message: vector<u8>,
    }

    public struct HitDoneEvent has copy,drop {
        game_id: ID,
        current_player_hand_sum: u8,
        player_cards: vector<u8>
    }

    public struct HouseAdminCap has key {
        id: UID
    }

    public struct HouseData has key {
        id: UID,
        balance: Balance<SUI>,
        house: address,
        public_key: vector<u8>
    }

    public struct Game has key {
        id: UID,
        user_randomness: vector<u8>,
        total_stake: Balance<SUI>,
        player: address,
        player_cards: vector<u8>,
        player_sum: u8,
        dealer_cards: vector<u8>,
        dealer_sum: u8,
        status: u8,
        counter: u8
    }

    public struct HitRequest has key, store {
        id: UID,
        game_id: ID,
        current_player_sum: u8,
    }

    public struct StandRequest has key, store {
        id: UID,
        game_id: ID,
        current_player_sum: u8,
    }

    fun init(ctx: &mut TxContext) {
        let house_cap = HouseAdminCap {
            id: object::new(ctx)
        };

        transfer::transfer(house_cap, ctx.sender());
    }

    public entry fun initialize_house_data(
        house_cap: HouseAdminCap,
        coin: Coin<SUI>,
        public_key: vector<u8>,
        ctx: &mut TxContext
    ) {
        assert!(coin::value(&coin)>0, EInsufficientBalance);

        let house_data = HouseData {
            id: object::new(ctx),
            balance: coin.into_balance(),
            house: ctx.sender(),
            public_key
        };

        let HouseAdminCap{ id } = house_cap;
        object::delete(id);

        transfer::share_object(house_data);
    }

    public entry fun top_up(house_data: &mut HouseData, coin: Coin<SUI>) {
        let balance = coin.into_balance();
        house_data.balance.join(balance);
    }

    public entry fun withdraw(house_data: &mut HouseData,ctx: &mut TxContext) {
        assert!(ctx.sender() == house_data.house, ECallerNotHouse);
        let total_balance = house_data.balance.value();
        let coin = coin::take(&mut house_data.balance, total_balance,ctx);
        transfer::public_transfer(coin, house_data.house);
    }

    public entry fun place_bet_and_create_game(
        user_randomness: vector<u8>,
        user_counter: &mut Counter,
        user_bet: Coin<SUI>,
        house_data: &mut HouseData,
        ctx: &mut TxContext
    ){
        assert!(house_data.balance() >= STAKE, EInsufficientHouseBalance);

        assert!(user_bet.value() == STAKE, EInvalidPlayerBetAmount);
        let mut stake = user_bet.into_balance();

        let house_stake = house_data.balance.split(STAKE);
        stake.join(house_stake);

        let mut initial_randomness = user_randomness;
        initial_randomness.append(user_counter.increment_and_get());

        let new_game = Game {
            id: object::new(ctx),
            user_randomness: initial_randomness,
            total_stake: stake,
            player: ctx.sender(),
            player_cards: vector[],
            player_sum: 0,
            dealer_cards: vector[],
            dealer_sum: 0,
            status: IN_PROGRESS,
            counter: 0
        };

        event::emit(GameCreatedEvent {
            game_id: object::id(&new_game)
        });

        transfer::share_object(new_game);
    }

    public fun first_deal(
        game: &mut Game,
        bls_sig: vector<u8>,
        house_data: &mut HouseData,
        ctx: &mut TxContext
    ) {
        let mut messageVector = game.user_randomness;
        messageVector.append(game.game_counter_vector());

        let is_sig_valid = bls12381_min_pk_verify(&bls_sig,&house_data.public_key,&messageVector);
        assert!(is_sig_valid,EInvalidBlsSig);

        assert!(game.player_sum == 0,EDealAlreadyHappend);

        let hashed_sign1 = blake2b256(&bls_sig);

        let (card1, hashed_sign2) = get_next_random_card(&hashed_sign1);
        game.player_cards.push_back(card1);

        let (card2, hashed_sign3) = get_next_random_card(&hashed_sign2);
        game.player_cards.push_back(card2);

        game.player_sum = get_card_sum(&game.player_cards);

        let (card3,_) = get_next_random_card(&hashed_sign3);
        game.dealer_cards.push_back(card3);
        game.dealer_sum = get_card_sum(&game.dealer_cards);

        if(game.player_sum == 21) {
            game.player_won_post_handling(b"BlackJack!!!", ctx);
        } else {
            game.counter = game.counter + 1;
        }
    }

    public fun hit(
        game: &mut Game,
        bls_sig: vector<u8>,
        house_data:&mut HouseData,
        hit_request: HitRequest,
        ctx: &mut TxContext
    ) {
        let mut messageVector = game.user_randomness;
        messageVector.append(game.game_counter_vector());
        let is_sig_valid = bls12381_min_pk_verify(&bls_sig,&house_data.public_key,&messageVector);
        assert!(is_sig_valid, EInvalidBlsSig);

        assert!(game.status == IN_PROGRESS, EGameHasFinished);

        let HitRequest {id, game_id, current_player_sum} = hit_request;

        assert!(game_id == object::id(game), EInvalidGameOfHitRequest);
        assert!(current_player_sum == game.player_sum, EInvalidSumOfHitRequest);
        object::delete(id);

        let hashed_sign = blake2b256(&bls_sig);
        let (card, _) = get_next_random_card(&hashed_sign);
        game.player_cards.push_back(card);
        game.player_sum = get_card_sum(&game.player_cards);
        event::emit(HitDoneEvent {
            game_id: object::uid_to_inner(&game.id),
            current_player_hand_sum: game.player_sum,
            player_cards: game.player_cards
        });
        if(game.player_sum > 21) {
            game.house_won_post_handling(house_data,ctx);
        } else {
            game.counter = game.counter + 1;
        }
    }

    public fun stand(
        game: &mut Game,
        bls_sig: vector<u8>,
        house_data: &mut HouseData,
        stand_request: StandRequest,
        ctx: &mut TxContext
    ) {
        let mut messageVector = game.user_randomness;
        messageVector.append(game.game_counter_vector());
        let is_sig_valid = bls12381_min_pk_verify(&bls_sig, &house_data.public_key,&messageVector);
        assert!(is_sig_valid,EInvalidBlsSig);
        assert!(game.status == IN_PROGRESS, EGameHasFinished);
        let StandRequest {id, game_id, current_player_sum} = stand_request;
        assert!(game_id == object::id(game), EInvalidGameOfStandRequest);
        assert!(current_player_sum == game.player_sum, EInvalidSumOfStandRequest);
        object::delete(id);

        let mut hashed_sign = blake2b256(&bls_sig);
        while (game.dealer_sum < 17) {
            let (card, last_hash_sign) = get_next_random_card(&hashed_sign);
            hashed_sign = last_hash_sign;
            game.dealer_cards.push_back(card);
            game.dealer_sum = get_card_sum(&game.dealer_cards);
        };
        if (game.dealer_sum > 21) {
            game.player_won_post_handling(b"Dealer Busted!",ctx);
        }
        else {
            if(game.dealer_sum > game.player_sum) {
                game.house_won_post_handling(house_data,ctx);
            }
            else if(game.player_sum > game.dealer_sum) {
                game.player_won_post_handling(b"Player won!",ctx);
            }
            else {
                game.tie_post_handling(house_data, ctx);
            }
        }
    }



    fun house_won_post_handling(game: &mut Game, house_data: &mut HouseData, ctx: &mut TxContext) {
        game.status = HOUSE_WON_STATUS;

        let outcome = GameOutEvent {
            game_id: object::uid_to_inner(&game.id),
            game_status: game.status,
            winner_address: house_data.house,
            message: b"Player busted",
        };
        event::emit(outcome);

        let total_stake = game.total_stake.value();
        let coin = coin::take(&mut game.total_stake, total_stake,ctx);
        house_data.balance.join(coin.into_balance());
    }








    fun player_won_post_handling(game: &mut Game, aMessage: vector<u8>, ctx: &mut TxContext) {
        game.status = PLAYER_WON_STATUS;

        let outcome = GameOutEvent {
            game_id: object::uid_to_inner(&game.id),
            game_status: game.status,
            winner_address: game.player,
            message: aMessage,
        };
        event::emit(outcome);

        let player_rewards = balance::value(&game.total_stake);
        let coin = coin::take(&mut game.total_stake, player_rewards,ctx);
        transfer::public_transfer(coin, game.player);
    }

    fun tie_post_handling(game: &mut Game, house_data: &mut HouseData,ctx: &mut TxContext) {
        game.status = TIE_STATUS;

        let outcome = GameOutEvent {
            game_id: object::uid_to_inner(&game.id),
            game_status: game.status,
            winner_address: @0x0,
            message: b"Tie",
        };
        event::emit(outcome);

        let total_stake_value = game.total_stake.value();
        let half_stake = total_stake_value / 2;

        let player_coin = coin::take(&mut game.total_stake,half_stake,ctx);
        transfer::public_transfer(player_coin, game.player);

        let house_coin = coin::take(&mut game.total_stake,half_stake,ctx);
        house_data.balance.join(house_coin.into_balance());
    }

    fun get_card_sum(cards: &vector<u8>): u8 {
        let mut sum: u8 =0;
        let mut i: u8 = 0;
        let n: u8 = (cards.length() as u8);
        let mut has_ace = false;

        while ( i < n ) {
            let cardIndex = cards[i as u64];

            let mut value = (cardIndex % 13) +1;

            if (value == 1) {
                has_ace =true;
            };
            if (value > 10) {
                value = 10;
            };
            sum = sum + value;
            i = i+1;
        };

        if( has_ace && sum+10 <=21) {
            sum = sum +10;
        };
        sum
    }

    public fun get_next_random_card(input_hash: &vector<u8>):(u8,vector<u8>) {
        let rehash = blake2b256(input_hash);
        let temp_address = address::from_bytes(rehash);
        let value = temp_address.to_u256();

        let randomCard = ((value % 52) as u8);
        (randomCard,rehash)
    }

    public fun game_counter_vector(game: &Game): vector<u8> {
        let mut simple_vec = vector[];
        simple_vec.push_back(game.counter);
        simple_vec
    }

    public fun user_randomness(game: &Game): vector<u8> {
        game.user_randomness
    }

    public fun balance(house_data: &HouseData): u64 {
        house_data.balance.value()
    }

    public fun house(house_data: &HouseData): address {
        house_data.house
    }

    public fun public_key(house_data: &HouseData): vector<u8> {
        house_data.public_key
    }

    public fun player(game: &Game): address {
        game.player
    }

    public fun player_cards(game: &Game): vector<u8> {
        game.player_cards
    }

    public fun player_sum(game: &Game): u8 {
        game.player_sum
    }

    public fun dealer_cards(game: &Game): vector<u8> {
        game.dealer_cards
    }

    public fun dealer_sum(game: &Game): u8 {
        game.dealer_sum
    }

    public fun status(game: &Game): u8 {
        game.status
    }

    public fun total_stake(game: &Game): u64 {
        game.total_stake.value()
    }






}