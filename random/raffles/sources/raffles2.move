module raffles::raffles2 {

    use sui::balance;
    use sui::balance::Balance;
    use sui::clock::{Clock, timestamp_ms};
    use sui::coin;
    use sui::coin::{destroy_zero, Coin};
    use sui::object;
    use sui::random::{Random, new_generator, generate_u32_in_range};
    use sui::sui::SUI;
    use sui::table::Table;
    use sui::table_vec;
    use sui::table_vec::TableVec;
    use sui::transfer;
    use sui::transfer::transfer;

    const EGameInProgress: u64 =0;
    const EGameAlreadyCompleted: u64 =1;
    const EInvalidAmount: u64 =2;
    const EReachedMaxParticipants: u64 =3;

    const MaxParticipants: u32 = 500;

    public struct Game has key {
        id: UID,
        cost_in_sui: u64,
        participants: u32,
        end_time: u64,
        balance: Balance<SUI>,
        participants_table: TableVec<address>,
    }

    public fun create(end_time: u64, cost_in_sui: u64,ctx: &mut TxContext) {
        let game = Game {
            id: object::new(ctx),
            cost_in_sui,
            participants: 0,
            end_time,
            balance: balance::zero(),
            participants_table: table_vec::empty(ctx),
        };
        transfer::share_object(game);
    }

    entry fun close(game: Game,r: &Random,clock: &Clock,ctx: &mut TxContext) {
        assert!(game.end_time <= clock.timestamp_ms(),EGameInProgress);
        let Game {id, cost_in_sui:_,participants,end_time: _, balance,participants_table} = game;
        if (participants >0 ) {
            let mut generator = r.new_generator(ctx);
            let winner = generator.generate_u32_in_range(0,participants-1);
            let winner_address = participants_table[winner as u64];
            let reward = coin::from_balance(balance,ctx);
            transfer::public_transfer(reward,winner_address);
        } else {
            balance.destroy_zero();
        };

        participants_table.drop();
        object::delete(id);
    }

    public fun play(game: &mut Game,coin: Coin<SUI>,clock: &Clock,ctx: &mut TxContext) {
        assert!(game.end_time > clock.timestamp_ms(),EGameAlreadyCompleted);
        assert!(coin.value() == game.cost_in_sui,EInvalidAmount);
        assert!(game.participants < MaxParticipants, EReachedMaxParticipants);

        coin::put(&mut game.balance,coin);
        game.participants_table.push_back(ctx.sender());
        game.participants = game.participants + 1;
    }



}