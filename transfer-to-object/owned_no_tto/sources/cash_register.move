/// Module: owned_no_tto
module owned_no_tto::cash_register {

    use sui::coin;
    use sui::coin::Coin;
    use sui::event;
    use sui::sui::SUI;
    use common::identified_payment::{Self,IdentifiedPayment};

    public struct PaymentProcessed has copy, drop {
        payment_id: u64,
        amount: u64
    }

    public fun process_payment(payment: IdentifiedPayment): Coin<SUI> {
        let (payment_id, coin) = identified_payment::unpack(payment);
        event::emit(PaymentProcessed { payment_id, amount: coin::value(&coin)});
        coin
    }





}

