/// Module: plinko
module plinko::plinko {

    use std::hash;
    use sui::balance::Balance;
    use sui::bcs::new;
    use sui::bls12381::bls12381_min_pk_verify;
    use sui::coin;
    use sui::coin::Coin;
    use sui::dynamic_object_field as dof;
    use sui::event::emit;
    use sui::hash::blake2b256;
    use sui::object;
    use sui::sui::SUI;
    use sui::transfer;
    use plinko::house_data::{ Self,HouseData, house};
    use plinko::counter_nft::Counter;

    const EStakeTooLow: u64 =0;
    const EStakeTooHigh: u64 =1;
    const EInvalidBlsSig: u64 =2;
    const EInsufficientHouseBalance: u64 =5;
    const EGameDoesNotExist: u64 =6;

    public struct Game has key, store {
        id: UID,
        game_start_epoch: u64,
        stake: Balance<SUI>,
        player: address,
        vrf_input: vector<u8>,
        fee_bp:u16
    }

    public struct NewGame has copy, drop {
        game_id: ID,
        player: address,
        vrf_input: vector<u8>,
        user_stake: u64,
        fee_bp: u16
    }

    public struct Outcome has copy,drop {
        game_id: ID,
        result: u64,
        player: address,
        trace: vector<u8>
    }

    public fun start_game(counter: &mut Counter,num_balls: u64, coin: Coin<SUI>, house_data: &mut HouseData, ctx: &mut TxContext): ID {
        let fee_bp = house_data.base_fee_in_bp();
        let (id, new_game) = internal_start_game(
            counter,
            num_balls,
            coin,
            house_data,
            fee_bp,
            ctx
        );
        dof::add(house_data.borrow_mut(),id,new_game);
        id
    }

    public fun finish_game(
        game_id: ID,
        bls_sig: vector<u8>,
        house_data: &mut HouseData,
        num_balls: u64,
        ctx: &mut TxContext
    ): (u64, address, vector<u8>) {
        assert!(game_exists(house_data,game_id), EGameDoesNotExist);

        let Game {
            id,
            game_start_epoch: _,
            stake,
            player,
            vrf_input,
            fee_bp: _
        } = dof::remove<ID,Game>(house_data.borrow_mut(),game_id);

        object::delete(id);

        let is_sig_valid = bls12381_min_pk_verify(&bls_sig,&house_data.public_key(),&vrf_input);
        assert!(is_sig_valid, EInvalidBlsSig);

        let mut extended_beacon = vector[];
        let mut counter: u8 = 0;

        while (extended_beacon.length() < (num_balls *12)) {
            let mut hash_input = vector[];
            hash_input.append(bls_sig);
            hash_input.push_back(counter);
            let block = blake2b256(&hash_input);
            extended_beacon.append(block);
            counter = counter + 1;
        };

        let mut trace = vector[];
        let stake_per_ball = stake.value<SUI>() / num_balls;
        let mut total_funds_amount: u64 =0;

        let mut ball_index =0;
        while (ball_index < num_balls) {
            let mut state: u64 =0;
            let mut i =0;
            while(i < 12) {
                let byte_index = (ball_index * 12) + 1;
                let byte = extended_beacon[byte_index];
                trace.push_back<u8>(byte);
                state = if(byte % 2 == 0){state +1}else{state};
                i = i + 1;
            };

            let multiplier_index = state % house_data.multiplier().length();
            let result = house_data.multiplier()[multiplier_index];
            let funds_amount_per_ball = (result * stake_per_ball)/100;
            total_funds_amount = total_funds_amount + funds_amount_per_ball;
            ball_index = ball_index + 1;
        };

        let payout_balance_mut = house_data.borrow_balance_mut();
        let payout_coin: Coin<SUI> = coin::take(payout_balance_mut, total_funds_amount,ctx);

        payout_balance_mut.join(stake);

        transfer::public_transfer(payout_coin, player);

        emit(Outcome{
            game_id,
            result: total_funds_amount,
            player,
            trace
        });

        (total_funds_amount,player,trace)
    }

    public fun game_start_epoch(game: &Game): u64 {
        game.game_start_epoch
    }

    public fun stake(game: &Game): u64 {
        game.stake.value()
    }

    public fun player(game: &Game): address {
        game.player
    }

    public fun vrf_input(game: &Game): vector<u8> {
        game.vrf_input
    }

    public fun fee_in_bp(game: &Game): u16 {
        game.fee_bp
    }

    public fun game_exists(house_data: &HouseData, game_id: ID): bool {
        dof::exists_(house_data.borrow(), game_id)
    }

    fun internal_start_game(
        counter: &mut Counter,
        num_balls: u64,
        coin: Coin<SUI>,
        house_data: &HouseData,
        fee_bp: u16,
        ctx: &mut TxContext
    ): (ID,Game) {
        let user_stake = coin.value();
        assert!(user_stake <= house_data.max_stake(),EStakeTooHigh);
        assert!(user_stake >= house_data.min_stake(),EStakeTooLow);
        assert!(house_data.balance() >= (user_stake*(house_data.multiplier()[0]))/100,EInsufficientHouseBalance);

        let vrf_input = counter.get_vrf_input_and_increment(num_balls);

        let id = object::new(ctx);
        let game_id = object::uid_to_inner(&id);
        let new_game = Game {
            id,
            game_start_epoch: ctx.epoch(),
            stake: coin.into_balance<SUI>(),
            player: ctx.sender(),
            vrf_input,
            fee_bp
        };

        emit(NewGame {
            game_id,
            player: ctx.sender(),
            vrf_input,
            user_stake,
            fee_bp,
        });

        (game_id, new_game)

    }



}

