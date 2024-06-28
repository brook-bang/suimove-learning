/// Module: object_bound
module object_bound::object_bound {

    use std::option;
    use sui::object;
    use sui::transfer;
    use sui::transfer::{transfer, Receiving};

    const EDontMessWithMe: u64 = 0;

    public struct ObjectBound<T: key + store> has key {
        id: UID,
        `for`: address,
        inner: Option<T>
    }

    public struct Borrow<T: key + store>{
        object: ObjectBound<T>,
        inner_id: ID,
    }

    public fun new<T: key + store>(inner: T, `for`: address,ctx: &mut TxContext) {
        transfer::transfer(ObjectBound {
            `for`,
            id: object::new(ctx),
            inner: option::some(inner),
        },`for`);
    }

    public fun borrow<T: key + store>(
        parent: &mut UID, to_receive: Receiving<ObjectBound<T>>
    ):(T,Borrow<T>) {
        let mut object =transfer::receive(parent,to_receive);
        let inner = option::extract(&mut object.inner);
        let inner_id = object::id(&inner);

        (inner,Borrow {object,inner_id})
    }

    public fun store<T: key + store>(inner: T, borrow: Borrow<T>) {
        assert!(object::id(&inner) == borrow.inner_id, EDontMessWithMe);
        let Borrow {mut object,inner_id:_} = borrow;
        let `for` = object.`for`;

        option::fill(&mut object.inner,inner);
        transfer::transfer(object, `for`);
    }
}

