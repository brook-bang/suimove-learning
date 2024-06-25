module token::regulated_token {

    use std::option;
    use sui::coin;
    use sui::coin::{create_currency, TreasuryCap};
    use sui::token;
    use sui::token::{Token, TokenPolicy, TokenPolicyCap};
    use sui::transfer;
    use sui::vec_map;
    use token::allowlist::Allowlist;

    use token::limiter_rule::Limiter;
    use token::denylist_rule::Denylist;

    public struct REGULATED_TOKEN has drop {}

    fun init(otw: REGULATED_TOKEN, ctx: &mut TxContext) {
        let treasury_cap = create_currencies(otw,ctx);
        let (mut policy,cap) = token::new_policy(&treasury_cap,ctx);

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
        token::add_rule_for_action<T,Denylist>(policy,cap,token::spend_action(), ctx);
        token::add_rule_for_action<T,Denylist>(policy,cap,token::to_coin_action(), ctx);
        token::add_rule_for_action<T,Denylist>(policy,cap,token::transfer_action(),ctx);
        token::add_rule_for_action<T,Denylist>(policy,cap,token::from_coin_action(),ctx);

        token::add_rule_for_action<T,Limiter>(policy,cap,token::transfer_action(),ctx);
        token::add_rule_for_action<T,Limiter>(policy,cap,token::to_coin_action(),ctx);

        let config = {
            let mut config = vec_map::empty();
            vec_map::insert(&mut config, token::transfer_action(),3000_000000);
            vec_map::insert(&mut config, token::to_coin_action(), 1000_000000);
            config
        };

        token::add_rule_for_action<T,Allowlist>(policy,cap,token::from_coin_action(),ctx);
        token::add_rule_for_action<T,Allowlist>(policy,cap,token::transfer_action(),ctx);
    }

    fun create_currencies<T: drop>(
        otw: T,
        ctx: &mut TxContext
    ): TreasuryCap<T> {
        let (treasury_cap,metadata) = coin::create_currency(
            otw,6,
            b"REG",
            b"Regulated Coin",
            b"Coin that illustrates different regulatory requirments",
            option::none(),
            ctx
        );

        transfer::public_freeze_object(metadata);
        treasury_cap
    }
}