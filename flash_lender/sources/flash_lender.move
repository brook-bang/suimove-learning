/// Module: flash_lender
module flash_lender::flash_lender {

    use sui::balance;
    use sui::balance::Balance;
    use sui::coin;
    use sui::coin::Coin;
    use sui::object;
    use sui::object::uid_to_inner;
    use sui::transfer;

    public struct FlashLender<phantom T> has key {
        id: UID,
        to_lend: Balance<T>,
        fee: u64
    }

    public struct Receipt<phantom T> {
        flash_lender_id: ID,
        repay_amount: u64
    }

    public struct AdminCap has key,store {
        id: UID,
        flash_lender_id: ID,
    }

    const ELoanTooLarge: u64 = 0;
    const EInvalidRepaymentAmount: u64 = 1;
    const ERepayToWrongLender: u64 = 2;
    const EAdminOnly: u64 = 3;
    const EWithdrawTooLarge: u64 =4;

    public fun new<T>(
        to_lend: Balance<T>,
        fee: u64,
        ctx: &mut TxContext,
    ): AdminCap {
        let id = object::new(ctx);
        let flash_lender_id = uid_to_inner(&id);
        let flash_lender = FlashLender { id, to_lend,fee };

        transfer::share_object(flash_lender);

        AdminCap {id: object::new(ctx),flash_lender_id}
    }

    public fun loan<T>(
        self: &mut FlashLender<T>,amount: u64,ctx: &mut TxContext
    ): (Coin<T>,Receipt<T>) {
        assert!(balance::value(&self.to_lend) >= amount, ELoanTooLarge);

        let loan = coin::take(&mut self.to_lend,amount,ctx);
        let repay_amount = amount + self.fee;
        let flash_lender_id = object::id(self);
        let receipt = Receipt {flash_lender_id,repay_amount};
        (loan, receipt)
    }

    public fun repay<T>(
        self: &mut FlashLender<T>,
        payment: Coin<T>,
        receipt: Receipt<T>,
    ) {
        let Receipt { flash_lender_id,repay_amount} =receipt;

        assert!(object::id(self) == flash_lender_id, ERepayToWrongLender);
        assert!(coin::value(&payment) == repay_amount,EInvalidRepaymentAmount);

        coin::put(&mut self.to_lend,payment)
    }

    public fun fee<T>(self: &FlashLender<T>): u64 {
        self.fee
    }

    public fun max_loan<T>(self: &FlashLender<T>): u64 {
        balance::value(&self.to_lend)
    }

    public fun repay_amount<T>(self: &Receipt<T>): u64 {
        self.repay_amount
    }

    public fun flash_lender_id<T>(self: &Receipt<T>): ID {
        self.flash_lender_id
    }

    public fun withdraw<T>(
        self: &mut FlashLender<T>,
        admin: &AdminCap,
        amount: u64,
        ctx: &mut TxContext
    ): Coin<T> {
        assert!(object::borrow_id(self) == &admin.flash_lender_id, EAdminOnly);
        assert!(balance::value(&self.to_lend) >= amount, EWithdrawTooLarge);
        coin::take(&mut self.to_lend, amount,ctx)
    }

    public fun deposit<T>(
        self: &mut FlashLender<T>,
        admin: &AdminCap,
        coin: Coin<T>,
    ) {
        assert!(object::borrow_id(self) == &admin.flash_lender_id,EAdminOnly);
        coin::put(&mut self.to_lend,coin);
    }

    public fun update_fee<T>(
        self: &mut FlashLender<T>,
        admin: &AdminCap,
        new_fee: u64
    ) {
        assert!(object::borrow_id(self) == &admin.flash_lender_id,EAdminOnly);
        self.fee = new_fee
    }









}

