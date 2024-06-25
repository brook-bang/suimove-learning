module token::loyalty {

    use std::option;
    use sui::coin;
    use sui::coin::TreasuryCap;
    use sui::token;
    use sui::transfer;
    use sui::tx_context;

    const EIncorrectAmount: u64 = 0;

    const GIFT_PRICE: u64 = 10;

    public struct LOYALTY has drop {}

    public struct GiftShop has drop {}

    public struct Gift has key,store {
        id: UID
    }

    fun init(otw: LOYALTY, ctx: &mut TxContext) {
        let (treasury_cap, coin_metadata) = coin::create_currency(
            otw,
            0,
            b"LOY",
            b"Loyalty Token",
            b"Token for Loyalty",
            option::none(),
            ctx
        );

        let (mut policy, policy_cap) = token::new_policy(&treasury_cap,ctx);

        token::add_rule_for_action<LOYALTY, GiftShop>(
            &mut policy,
            &policy_cap,
            token::spend_action(),
            ctx
        );

        token::share_policy(policy);

        transfer::public_freeze_object(coin_metadata);
        transfer::public_transfer(policy_cap,tx_context::sender(ctx));
        transfer::public_transfer(treasury_cap,tx_context::sender(ctx));
    }

    public fun reward_user(
        cap: &mut TreasuryCap<LOYALTY>,
        amount: u64,
        recipient: address,
        ctx: &mut TxContext
    ) {
        let token = token::mint(cap, amount, ctx);
        let req = token::transfer(token,recipient,ctx);

        token::confirm_with_treasury_cap(cap,req,ctx);
    }

    

}