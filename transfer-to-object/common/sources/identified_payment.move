
/// Module: common
module common::identified_payment {

    use sui::coin;
    use sui::coin::Coin;
    use sui::dynamic_field;
    use sui::event;
    use sui::object;
    use sui::sui::SUI;
    use sui::transfer;
    use sui::transfer::Receiving;
    use sui::tx_context;

    const ENotEarmarkedFotSender: u64 = 0;

    public struct IdentifiedPayment has key, store {
        id: UID,
        payment_id: u64,
        coin: Coin<SUI>,
    }

    public struct EarmarkedPayment has key {
        id: UID,
        payment: IdentifiedPayment,
        `for`: address,
    }

    public struct SentPaymentEvent has copy, drop{
        payment_id: u64,
        paid_to: address,
        payment_amount: u64,
        originator: address,
    }

    public struct ProcessedPaymentEvent has copy, drop {
        payment_id: u64,
        payment_amount: u64,
    }

    public fun make_payment(payment_id: u64, coin: Coin<SUI>, to: address, ctx: &mut TxContext) {
        let payment_amount = coin::value(&coin);
        let identified_payment = IdentifiedPayment {
            id: object::new(ctx),
            payment_id,
            coin
        };
        event::emit(SentPaymentEvent {
            payment_id,
            paid_to: to,
            payment_amount,
            originator: tx_context::sender(ctx),
        });
        transfer::transfer(identified_payment, to);
    }

    public fun make_shared_payment(register_uid: &mut UID, payment_id: u64,coin: Coin<SUI>,ctx: &mut TxContext) {
        let payment_amount = coin::value(&coin);
        let identified_payment = IdentifiedPayment {
            id: object::new(ctx),
            payment_id,
            coin
        };
        event::emit(SentPaymentEvent {
            payment_id,
            paid_to: object::uid_to_address(register_uid),
            payment_amount,
            originator: tx_context::sender(ctx),
        });
        dynamic_field::add(register_uid,payment_id,identified_payment)
    }

    public fun unpack(identified_payment: IdentifiedPayment): (u64, Coin<SUI>) {
        let IdentifiedPayment {id, payment_id, coin} = identified_payment;
        object::delete(id);
        event::emit(ProcessedPaymentEvent {
            payment_id,
            payment_amount: coin::value(&coin),
        });
        (payment_id,coin)
    }

    public fun transfer(earmarked: EarmarkedPayment, to: address) {
        transfer::transfer(earmarked, to);
    }

    public fun receive(parent: &mut UID, ticket:Receiving<EarmarkedPayment>, ctx: &TxContext): IdentifiedPayment {
        let EarmarkedPayment {id, payment,`for`} = transfer::receive(parent,ticket);
        assert!(tx_context::sender(ctx) == `for` , ENotEarmarkedFotSender);
        object::delete(id);
        payment
    }











}

