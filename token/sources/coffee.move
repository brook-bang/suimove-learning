module token::coffee {

    use std::option;
    use sui::balance;
    use sui::balance::Balance;
    use sui::coin::{Self,TreasuryCap, Coin};
    use sui::event;
    use sui::object;
    use sui::sui::SUI;
    use sui::token;
    use sui::token::Token;
    use sui::transfer;

    const EIncorrectAmount: u64 = 0;

    const ENotEnoughPoints: u64 = 1;

    const COFFEE_PRICE: u64 = 10_000_000_000;

    public struct COFFEE has drop {}

    public struct CoffeeShop has key {
        id: UID,
        coffee_points: TreasuryCap<COFFEE>,
        balance: Balance<SUI>,
    }

    public struct CoffeePurchased has copy, store, drop {}

    fun init(otw: COFFEE, ctx: &mut TxContext) {
        let (coffee_points, metadata) = coin::create_currency(
            otw, 0,b"COFFEE",b"Coffee Point",
            b"Buy 4 coffees and get 1 free",
            option::none(),
            ctx
        );

        transfer::public_freeze_object(metadata);
        transfer::share_object(CoffeeShop {
            coffee_points,
            id: object::new(ctx),
            balance: balance::zero(),
        });
    }

    public fun buy_coffee(app: &mut CoffeeShop, payment: Coin<SUI>, ctx: &mut TxContext) {

        assert!(coin::value(&payment) > COFFEE_PRICE, EIncorrectAmount);

        let token = token::mint(&mut app.coffee_points,1,ctx);
        let request = token::transfer(token,ctx.sender(),ctx);

        token::confirm_with_treasury_cap(&mut app.coffee_points,request,ctx);
        coin::put(&mut app.balance, payment);
        event::emit(CoffeePurchased {})
    }

    public fun claim_free(app: &mut CoffeeShop, points: Token<COFFEE>,ctx: &mut TxContext) {
        assert!(token::value(&points) == 4,EIncorrectAmount);

        let request = token::spend(points,ctx);
        token::confirm_with_treasury_cap(&mut app.coffee_points, request,ctx);
        event::emit(CoffeePurchased {})
    }

    public fun transfer(
        app: &mut CoffeeShop,
        mut points: Token<COFFEE>,
        recipient: address,
        ctx: &mut TxContext
    ) {
        assert!(token::value(&points) > 1,ENotEnoughPoints);
        let commission = token::split(&mut points,1,ctx);
        let request = token::transfer(points,recipient,ctx);

        token::confirm_with_treasury_cap(&mut app.coffee_points,request,ctx);
        token::burn(&mut app.coffee_points,commission);
    }



}