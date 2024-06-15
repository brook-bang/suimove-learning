/// Module: escrow
module escrow::shared {

    use sui::dynamic_object_field as dof;
    use sui::event;
    use sui::kiosk_extension::ExtensionKey;
    use sui::object;
    use sui::transfer;
    use escrow::lock::{Key, Locked};

    public struct EscrowedObjectKey has copy, store,drop {}

    public struct Escrow<phantom T: key + store> has key,store {
        id: UID,
        sender: address,
        recipient: address,
        exchange_key: ID,
    }

    const EMisMatchedSenderRecipient: u64 = 0;
    const EMisMatchedExchangeObject: u64 = 1;

    public fun create<T: key + store>(
        escrowed: T,
        exchange_key: ID,
        recipient: address,
        ctx: &mut TxContext
    ) {
        let mut escrow = Escrow<T> {
            id: object::new(ctx),
            sender: ctx.sender(),
            recipient,
            exchange_key,
        };

        event::emit(EscrowCreated {
            escrow_id: object::id(&escrow),
            key_id: exchange_key,
            sender: escrow.sender,
            recipient,
            item_id: object::id(&escrowed),
        });

        dof::add(&mut escrow.id,EscrowedObjectKey {}, escrowed);

        transfer::public_share_object(escrow);
    }

    public fun swap<T: key + store , U: key + store>(
        mut escrow: Escrow<T>,
        key: Key,
        locked: Locked<U>,
        ctx: &TxContext,
    ): T {
        let escrowed = dof::remove<EscrowedObjectKey,T>(&mut escrow.id, EscrowedObjectKey {});

        let Escrow {
            id,
            sender,
            recipient,
            exchange_key,
        } = escrow;

        assert!(recipient == ctx.sender(), EMisMatchedSenderRecipient);
        assert!(exchange_key == object::id(&key), EMisMatchedExchangeObject);

        transfer::public_transfer(locked.unlock(key), sender);

        event::emit(EscrowSwapped {
            escrow_id: id.to_inner(),
        });

        id.delete();

        escrowed
    }

    public fun return_to_sender<T: key + store>(
        mut escrow: Escrow<T>,
        ctx: &TxContext
    ): T {
        event::emit(EscrowCancelled {
            escrow_id: object::id(&escrow)
        });

        let escrowed = dof::remove<EscrowedObjectKey, T>(&mut escrow.id, EscrowedObjectKey {});

        let Escrow {
            id,
            sender,
            recipient: _,
            exchange_key: _,
        } = escrow;

        assert!(sender == ctx.sender(), EMisMatchedSenderRecipient);
        id.delete();
        escrowed
    }

    //Events
    public struct EscrowCreated has copy, drop {
        escrow_id: ID,
        key_id: ID,
        sender: address,
        recipient: address,
        item_id: ID,
    }

    public struct EscrowSwapped has copy, drop {
        escrow_id: ID
    }

    public struct EscrowCancelled has copy, drop {
        escrow_id: ID
    }



}

