/// Module: counter
module counter::counter {

    public struct Counter has key{
        id: UID,
        owner: address,
        value: u64,
    }

    public fun create(ctx: &mut TxContext) {
        let counter = Counter {
            id: object::new(ctx),
            owner: ctx.sender(),
            value: 0,
        };
        transfer::share_object(counter);
    }

    public fun increment(counter: &mut Counter,){
        counter.value = counter.value +1;
    }

    public fun set_value(counter: &mut Counter, value: u64 ,ctx: &mut TxContext) {
        assert!(ctx.sender() == counter.owner, 0);
        counter.value =  value ;
    }

    public

}

