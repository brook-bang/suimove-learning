/// Module: trusted_swap
module trusted_swap::trusted_swap {

    use sui::balance;
    use sui::balance::Balance;
    use sui::coin;
    use sui::coin::Coin;
    use sui::object;
    use sui::sui::SUI;
    use sui::transfer;
    use sui::tx_context;

    public struct Object has key,store {
        id: UID,
        scarcity: u8,
        style: u8,
    }

    public struct SwapRequest has key {
        id: UID,
        owner: address,
        object: Object,
        fee: Balance<SUI>
    }

    const EFeeToLow: u64 = 0;
    const EBadSwap: u64 =1;

    const MIN_FEE: u64 = 1000;

    public fun new(scarcity: u8, style: u8,ctx: &mut TxContext): Object {
        Object { id: object::new(ctx), scarcity, style}
    }

    public fun request_swap(
        object: Object,
        fee: Coin<SUI>,
        service: address,
        ctx: &mut TxContext
    ) {
        assert!(coin::value(&fee) > MIN_FEE, EFeeToLow);

        let request = SwapRequest {
            id: object::new(ctx),
            owner: tx_context::sender(ctx),
            object,
            fee: coin::into_balance(fee),
        };
        transfer::transfer(request,service)
    }

    public fun execute_swap(s1: SwapRequest, s2: SwapRequest): Balance<SUI> {
        let SwapRequest {id: id1, owner:owner1,object: o1,fee: mut fee1} =s1;
        let SwapRequest {id: id2, owner:owner2,object: o2,fee: fee2} = s2;

        assert!(o1.scarcity == o2.scarcity, EBadSwap);
        assert!(o1.style == o2.style, EBadSwap);

        transfer::transfer(o1,owner2);
        transfer::transfer(o2,owner1);

        object::delete(id1);
        object::delete(id2);

        balance::join(&mut fee1,fee2);
        fee1
    }





}

