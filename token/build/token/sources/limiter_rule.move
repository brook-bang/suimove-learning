module token::limiter_rule {

    use std::string::String;
    use sui::token;
    use sui::token::{Token, TokenPolicy, ActionRequest, action, TokenPolicyCap};
    use sui::vec_map;
    use sui::vec_map::VecMap;

    const ELimitExceeded: u64 = 0;

    public struct Limiter has drop {}

    public struct Config has store,drop {
        limits: VecMap<String,u64>
    }

    public fun verify<T>(
        policy: &TokenPolicy<T>,
        request: &mut ActionRequest<T>,
        ctx: &mut TxContext
    ) {
        if (!token::has_rule_config<T,Limiter>(policy)) {
            return token::add_approval(Limiter {}, request,ctx)
        };

        let config: &Config = token::rule_config(Limiter {}, policy);
        if (!vec_map::contains(&config.limits, &token::action(request))) {
            return token::add_approval(Limiter {}, request, ctx)
        };

        let action_limit = *vec_map::get(&config.limits,&token::action(request));

        assert!(token::amount(request) <= action_limit,ELimitExceeded);
        token::add_approval(Limiter {}, request, ctx);
    }

    public fun set_config<T>(
        policy: &mut TokenPolicy<T>,
        cap: &TokenPolicyCap<T>,
        limits: VecMap<String,u64>,
        ctx: &mut TxContext
    ) {
        if (!token::has_rule_config<T,Limiter>(policy)) {
            let config = Config {limits};
            token::add_rule_config(Limiter {}, policy,cap,config,ctx);
        } else {
            let config: &mut Config = token::rule_config_mut(Limiter {}, policy,cap);
            config.limits = limits;
        }
    }

    public fun get_config<T>(policy: &TokenPolicy<T>): VecMap<String,u64> {
        token::rule_config<T,Limiter,Config>(Limiter {},policy).limits
    }






}