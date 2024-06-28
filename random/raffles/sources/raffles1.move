/// Module: raffles
module raffles::raffles1 {

    use std::option;
    use sui::balance;
    use sui::balance::Balance;
    use sui::clock::{Clock};
    use sui::coin;
    use sui::coin::{balance, Coin};
    use sui::object;
    use sui::random::{Random};
    use sui::sui::SUI;
    use sui::transfer;

    const EGameInProgress: u64 =0;
    const EGameAlreadyCompleted: u64 =1;
    const EInvalidAmount: u64 =2;
    const EGameMismatch: u64 =3;
    const ENotWinner: u64 =4;
    const ENoparticipants: u64 =5;

    public struct Game has key {
        id: UID,
        cost_in_sui: u64,
        participants: u32,
        end_time: u64,
        winner: Option<u32>,
        balance: Balance<SUI>,
    }

    public struct Ticket has key {
        id: UID,
        game_id: ID,
        participant_index: u32,
    }

    public fun create(end_time: u64, cost_in_sui: u64,ctx: &mut TxContext) {
        let game = Game {
            id: object::new(ctx),
            cost_in_sui,
            participants: 0,
            end_time,
            winner: option::none(),
            balance: balance::zero(),
        };
        transfer::share_object(game);
    }

    entry fun determine_winner(game: &mut Game, r: &Random, clock: &Clock,ctx: &mut TxContext) {
        assert!(game.end_time <= clock.timestamp_ms(),EGameInProgress);
        assert!(game.winner.is_none(),EGameAlreadyCompleted);
        assert!(game.participants >0 , ENoparticipants);
        let mut generator = r.new_generator(ctx);
        let winner = generator.generate_u32_in_range(1,game.participants);
        game.winner = option::some(winner);
    }

    public fun buy_ticket(game: &mut Game,coin: Coin<SUI>,clock: &Clock,ctx: &mut TxContext): Ticket {
        assert!(game.end_time > clock.timestamp_ms(),EGameAlreadyCompleted);
        assert!(coin.value() == game.cost_in_sui, EInvalidAmount);

        game.participants = game.participants +1;
        coin::put(&mut game.balance, coin);

        Ticket {
            id: object::new(ctx),
            game_id: object::id(game),
            participant_index: game.participants,
        }
    }

    public fun redeem(ticket: Ticket,game: Game,ctx: &mut TxContext): Coin<SUI> {
        assert!(object::id(&game) == ticket.game_id,EGameMismatch);
        assert!(game.winner.contains(&ticket.participant_index),ENotWinner);
        destroy_ticket(ticket);

        let Game {id, cost_in_sui: _, participants: _, end_time: _, winner:_,balance} = game;
        object::delete(id);
        let reward = balance.into_coin(ctx);
        reward
    }

    public fun destroy_ticket(ticket: Ticket) {
        let Ticket {id, game_id: _,participant_index:_} =ticket;
        object::delete(id);
    }


}

