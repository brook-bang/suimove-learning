/// Module: slot_machine
module slot_machine::slot_machine {

    use sui::balance::Balance;
    use sui::coin;
    use sui::coin::Coin;
    use sui::math::min;
    use sui::object;
    use sui::random::{Random, new_generator, generate_u8_in_range};
    use sui::sui::SUI;
    use sui::transfer;

    const EInvalidAmount: u64 =0;
    const EInvalidSender: u64 =1;
    const EInvalidEpoch: u64 =2;

    public struct Game has key {
        id: UID,
        creator: address,
        epoch: u64,
        balance: Balance<SUI>,
    }

    public fun cteate(
        reward: Coin<SUI>,
        ctx: &mut TxContext,
    ) {
        let amount = reward.value();
        assert!(amount > 0, EInvalidAmount);
        transfer::share_object(Game {
            id: object::new(ctx),
            creator: ctx.sender(),
            epoch: ctx.epoch(),
            balance: reward.into_balance(),
        });
    }

    public fun close(game: Game,ctx: &mut TxContext): Coin<SUI> {
        assert!(ctx.epoch() > game.epoch, EInvalidEpoch);
        assert!(ctx.sender() == game.creator, EInvalidSender);
        let Game {id, creator: _,epoch:_,balance} = game;
        object::delete(id);
        balance.into_coin(ctx)
    }

    entry fun play(game: &mut Game,r: &Random, coin: &mut Coin<SUI>,ctx: &mut TxContext) {
        assert!(ctx.epoch()== game.epoch, EInvalidEpoch);
        assert!(coin.value() > 0, EInvalidAmount);

        let mut generator = new_generator(r,ctx);
        let bet = generator.generate_u8_in_range(1,100);
        let lost = bet / 50;
        let won = ( 2-lost ) / 2;

        let coin_value = coin.value();
        let bet_amount = min( coin_value,game.balance.value());
        coin::put(&mut game.balance,coin.split(bet_amount,ctx));

        let reward = 2*(won as u64) * bet_amount;

        coin.join(coin::take(&mut game.balance,reward,ctx));

    }

}

