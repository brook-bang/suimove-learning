module token::simple_token {

    use std::option;
    use sui::coin;
    use sui::coin::TreasuryCap;
    use sui::token;
    use sui::token::{TokenPolicy, TokenPolicyCap};
    use sui::transfer;
    use token::denylist_rule::Denylist;


    public struct SIMPLE_TOKEN has drop {}

    fun init(otw: SIMPLE_TOKEN,ctx: &mut TxContext) {
        let treasury_cap = create_currency(otw,ctx);
        let (mut policy, cap) = token::new_policy(&treasury_cap,ctx);

        set_rules(&mut policy,&cap,ctx);

        transfer::public_transfer(treasury_cap,ctx.sender());
        transfer::public_transfer(cap,ctx.sender());
        token::share_policy(policy);
    }

    public(package) fun set_rules<T>(
        policy: &mut TokenPolicy<T>,
        cap: &TokenPolicyCap<T>,
        ctx: &mut TxContext
    ) {
        token::add_rule_for_action<T,Denylist>(policy,cap,token::spend_action(),ctx);
        token::add_rule_for_action<T,Denylist>(policy,cap,token::to_coin_action(),ctx);
        token::add_rule_for_action<T,Denylist>(policy,cap,token::transfer_action(),ctx);
        token::add_rule_for_action<T,Denylist>(policy,cap,token::from_coin_action(),ctx);
    }

    fun create_currency<T: drop>(
        otw: T,
        ctx: &mut TxContext
    ): TreasuryCap<T> {
        let (treasury_cap, metadata) = coin::create_currency(
            otw,6,
            b"SMPL",
            b"Simple Token",
            b"Token that showcases denylist",
            option::none(),
            ctx
        );

        transfer::public_freeze_object(metadata);
        treasury_cap
    }






}