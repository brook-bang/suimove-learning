module plinko::counter_nft {
    use sui::bcs::{Self};
    use sui::object;
    use sui::transfer;

    public struct Counter has key {
        id: UID,
        count: u64,
    }

    entry fun burn(self: Counter) {
        let Counter {id, count: _ } = self;
        object::delete(id);
    }

    public fun mint(ctx: &mut TxContext): Counter {
        Counter {
            id: object::new(ctx),
            count: 0
        }
    }

    public fun transfer_to_sender(counter: Counter,ctx: &mut TxContext) {
        transfer::transfer(counter, ctx.sender());
    }

    public fun get_vrf_input_and_increment(self: &mut Counter, num_balls: u64): vector<u8> {
        let mut vrf_input = object::id_bytes(self);
        let count_to_bytes = bcs::to_bytes(&self.count());
        let num_balls_to_bytes = bcs::to_bytes(&num_balls);
        vrf_input.append(count_to_bytes);
        vrf_input.append(num_balls_to_bytes);
        self.increment();
        vrf_input

    }

    public fun count(self: &Counter): u64 {
        self.count
    }

    fun increment(self: &mut Counter) {
        self.count = self.count + 1;
    }


}