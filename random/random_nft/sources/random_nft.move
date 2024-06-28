module random_nft::random_nft {

    use std::string::String;
    use sui::object;
    use sui::object::delete;
    use sui::random::{Random, new_generator, generate_u8_in_range};
    use sui::transfer;
    use sui::tx_context::sender;

    const EInvalidParams: u64 = 0;

    const GOLD: u8 = 1;
    const SILVER: u8 = 2;
    const BRONZE: u8 = 3;

    public struct AirDropNFT has key, store {
        id: UID
    }

    public struct MetalNFT has key,store {
        id: UID,
        metal: u8
    }

    public struct MintingCapablity has key {
        id: UID
    }

    fun init(ctx: &mut TxContext) {
        transfer::transfer(
            MintingCapablity {id: object::new(ctx)},
            ctx.sender(),
        );
    }

    public fun mint(_cap: &MintingCapablity, n: u16, ctx: &mut TxContext): vector<AirDropNFT> {
        let mut result = vector[];
        let mut i =0;
        while (i < n) {
            result.push_back(AirDropNFT{id: object::new(ctx)});
            i= i+1;
        };
        result
    }

    entry fun reveal(nft: AirDropNFT, r: &Random,ctx: &mut TxContext) {
        destroy_airdrop_nft(nft);

        let mut generator = new_generator(r,ctx);
        let v = generator.generate_u8_in_range(1,100);

        let is_gold = arithmetic_is_less_than(v,11,100);
        let is_silver = arithmetic_is_less_than(v,41,100)*(1-is_gold);
        let is_bronze = (1 - is_gold)*(1-is_silver);
        let metal = is_gold * GOLD + is_silver * SILVER + is_bronze * BRONZE;

        transfer::public_transfer(
            MetalNFT {id: object::new(ctx), metal},
            ctx.sender()
        );
    }

    fun arithmetic_is_less_than(v: u8,w: u8, v_max: u8): u8 {
        assert!(v_max >= w && w > 0,EInvalidParams);
        let v_max_over_w = v_max / w;
        let v_over_w = v/w;
        (v_max_over_w - v_over_w) / v_max_over_w
    }

    entry fun reveal_alternative1(nft: AirDropNFT, r: &Random, ctx: &mut TxContext) {
        destroy_airdrop_nft(nft);

        let mut generator = new_generator(r,ctx);
        let v = generator.generate_u8_in_range(1,100);

        if (v < 60) {
            transfer::public_transfer(
                MetalNFT {id: object::new(ctx), metal: BRONZE},
                ctx.sender(),
            );
        } else if (v <= 90) {
            transfer::public_transfer(
                MetalNFT {id: object::new(ctx),metal: SILVER},
                ctx.sender(),
            );
        } else if (v < 100) {
            transfer::public_transfer(
                MetalNFT {id: object::new(ctx),metal: GOLD},
                ctx.sender(),
            );
        };
    }

    public struct RandomnessNFT has key,store {
        id: UID,
        value: u8,
    }

    entry fun reveal_alternative2_step1(nft: AirDropNFT, r: &Random,ctx: &mut TxContext) {
        destroy_airdrop_nft(nft);

        let mut generator = new_generator(r,ctx);
        let v = generator.generate_u8_in_range(1,100);

        transfer::public_transfer(
            RandomnessNFT {id: object::new(ctx), value: v,},
            ctx.sender(),
        );
    }

    public fun reveal_alternative2_step2(nft: RandomnessNFT, ctx: &mut TxContext): MetalNFT {
        let RandomnessNFT {id, value} = nft;
        delete(id);

        let metal =
            if(value <=10) GOLD
            else if ( 10<value && value <=40 ) SILVER
            else BRONZE;

        MetalNFT {
            id: object::new(ctx),
            metal,
        }
    }

    fun destroy_airdrop_nft(nft: AirDropNFT) {
        let AirDropNFT {id} = nft;
        object::delete(id)
    }

}