module token::denylist_rule {

    use std::option;
    use std::vector;
    use sui::bag;
    use sui::bag::Bag;
    use sui::token;
    use sui::token::{TokenPolicy, ActionRequest, TokenPolicyCap};

    const EUserBlocked: u64 =0;

    public struct Denylist has drop {}

    public fun verify<T>(
        policy: &TokenPolicy<T>,
        request: &mut ActionRequest<T>,
        ctx: &mut TxContext
    ) {
        if(!has_config(policy)) {
            token::add_approval(Denylist {}, request, ctx);
            return
        };

        let config = config(policy);
        let sender = token::sender(request);
        let receiver = token::recipient(request);

        assert!(!bag::contains(config,sender),EUserBlocked);

        if(option::is_some(&receiver)){
            let receiver = *option::borrow(&receiver);
            assert!(!bag::contains(config, receiver),EUserBlocked);
        };

        token::add_approval(Denylist {}, request, ctx);
    }

    public fun add_records<T>(
        policy: &mut TokenPolicy<T>,
        cap: &TokenPolicyCap<T>,
        mut addresses: vector<address>,
        ctx: &mut TxContext
    ) {
        if (!has_config(policy)) {
            token::add_rule_config(Denylist {}, policy, cap, bag::new(ctx),ctx);
        };

        let config_mut = config_mut(policy,cap);

        while (vector::length(&addresses) > 0) {
            bag::add(config_mut, vector::pop_back(&mut addresses),true)
        }
    }

    public fun remove_records<T>(
        policy: &mut TokenPolicy<T>,
        cap: &TokenPolicyCap<T>,
        mut addresses : vector<address>,
        _ctx: &mut TxContext
    ) {
        let config_mut = config_mut(policy,cap);

        while (vector::length(&addresses) > 0) {
            let record = vector::pop_back(&mut addresses);
            if (bag::contains(config_mut,record)) {
                let _: bool = bag::remove(config_mut,record);
            };
        };
    }

    fun has_config<T>(self: &TokenPolicy<T>): bool {
        token::has_rule_config_with_type<T,Denylist,Bag>(self)
    }

    fun config<T>(self: &TokenPolicy<T>): &Bag {
        token::rule_config<T,Denylist,Bag>(Denylist {}, self)
    }

    fun config_mut<T>(self: &mut TokenPolicy<T>, cap: &TokenPolicyCap<T>): &mut Bag {
        token::rule_config_mut(Denylist {}, self,cap)
    }








}