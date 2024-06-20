/// Module: shared_with_tto
module shared_with_tto::shared_cash_register {

    use common::identified_payment::{Self, IdentifiedPayment, EarmarkedPayment};

    use std::string;
    use std::string::String;
    use std::vector;
    use sui::coin::Coin;
    use sui::object;
    use sui::sui::SUI;
    use sui::transfer;
    use sui::transfer::Receiving;
    use sui::tx_context;
    use sui::vec_set;
    use sui::vec_set::VecSet;

    const EInvalidOwner: u64 = 0;
    const ENotAuthorized:  u64 =2;

    public struct CashRegister has key {
        id: UID,
        authorized_individuals: VecSet<address>,
        business_name: String,
        registor_owner: address,
    }

    public fun create_cash_register(
        mut authorized_individuals_vec: vector<address>,
        business_name: String,
        ctx: &mut TxContext,
    ) {
        let mut authorized_individuals = vec_set::empty();

        while (!vector::is_empty(&authorized_individuals_vec)) {
            let addr = vector::pop_back(&mut authorized_individuals_vec);
            vec_set::insert(&mut authorized_individuals,addr);
        };

        let register = CashRegister {
            id: object::new(ctx),
            authorized_individuals,
            business_name,
            registor_owner: tx_context::sender(ctx),
        };
        transfer::share_object(register);
    }

    public fun transfer_cash_register_ownership(
        register: &mut CashRegister,
        new_owner: address,
        ctx: &TxContext
    ) {
        assert!(register.registor_owner == tx_context::sender(ctx),EInvalidOwner);
        register.registor_owner = new_owner;
    }

    public fun update_business_name(
        register: &mut CashRegister,
        new_name: String,
        ctx: &TxContext,
    ) {
        assert!(register.registor_owner == tx_context::sender(ctx), EInvalidOwner);
        register.business_name = new_name;
    }

    public fun update_authorized_individuals(
        register: &mut CashRegister,
        addr: address,
        add_or_remove: bool,
        ctx: &TxContext
    ) {
        assert!(register.registor_owner == tx_context::sender(ctx),EInvalidOwner);
        if (add_or_remove) {
            assert!(vec_set::contains(&register.authorized_individuals,&addr),ENotAuthorized);
            vec_set::remove(&mut register.authorized_individuals,&addr);
        } else {
            vec_set::insert(&mut register.authorized_individuals, addr);
        }
    }

    public fun process_payment(register: &mut CashRegister, payment_ticket: Receiving<IdentifiedPayment>,ctx: &TxContext): Coin<SUI> {
        let sender = tx_context::sender(ctx);
        assert!(vec_set::contains(&register.authorized_individuals, &sender) || sender == register.registor_owner, ENotAuthorized);
        let payment: IdentifiedPayment = transfer::public_receive(&mut register.id,payment_ticket);
        let (_,coin) = identified_payment::unpack(payment);
        coin
    }

    public fun process_tip(register: &mut CashRegister,earmarked_ticket: Receiving<EarmarkedPayment>, ctx: &TxContext): Coin<SUI> {
        let payment: IdentifiedPayment = identified_payment::receive(&mut register.id,earmarked_ticket,ctx);
        let (_, coin) = identified_payment::unpack(payment);
        coin
    }





}

