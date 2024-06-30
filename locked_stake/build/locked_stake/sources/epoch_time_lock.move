/// Module: locked_stake
module locked_stake::epoch_time_lock {

    use sui::tx_context;

    const EEpochAlreadyPassed: u64 = 0;

    const EEpochNotYetEnded: u64 = 1;

    public struct EpochTimeLock has store,copy {
        epoch: u64
    }

    public fun new(epoch: u64, ctx: &TxContext): EpochTimeLock {
        assert!(tx_context::epoch(ctx) < epoch, EEpochAlreadyPassed);
        EpochTimeLock { epoch }
    }

    public fun destroy(lock: EpochTimeLock,ctx: &TxContext) {
        let EpochTimeLock {epoch} = lock;
        assert!(tx_context::epoch(ctx) >= epoch, EEpochNotYetEnded);
    }

    public fun epoch(lock: &EpochTimeLock): u64 {
        lock.epoch
    }



}

