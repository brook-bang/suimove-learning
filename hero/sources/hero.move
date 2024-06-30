/// Module: hero
module hero::hero {

    use std::option;
    use std::option::swap_or_fill;
    use sui::balance;
    use sui::balance::Balance;
    use sui::coin;
    use sui::coin::Coin;
    use sui::event;
    use sui::math::min;
    use sui::object;
    use sui::sui::SUI;
    use sui::token::has_rule_config;
    use sui::transfer;
    use sui::tx_context;

    public struct Hero has key,store {
        id: UID,
        game_id: ID,
        health: u64,
        experience: u64,
        sword: Option<Sword>
    }

    public struct Sword has key,store {
        id: UID,
        game_id: ID,
        magic: u64,
        strength: u64
    }

    public struct Potion has key, store {
        id: UID,
        game_id: ID,
        potency: u64
    }

    public struct Boar has key, store {
        id: UID,
        game_id: ID,
        health: u64,
        strength: u64
    }

    public struct Game has key {
        id: UID,
        payment: Balance<SUI>
    }

    public struct Admin has key,store {
        id: UID,
        game_id: ID,
        boars_created: u64,
        potions_created: u64,
    }

    public struct BoarSlainEvent has copy, drop {
        slayer_address: address,
        boar: ID,
        hero: ID,
        game_id: ID
    }

    const MAX_HP :u64 = 1000;
    const MAX_MAGIC: u64 = 10;
    const MIN_SWORD_COST: u64 = 100;

    const EWrongGame: u64 =0;
    const EBoarWon: u64 =1;
    const EHeroTired: u64 =2;
    const ENotAdmin: u64 =3;
    const EInsufficientFunds: u64 =5;
    const EAlreadyEquipped: u64 =6;
    const ENotEquipped: u64 =7;

    public fun new_sword(
        game: &mut Game,
        payment: Coin<SUI>,
        ctx: &mut TxContext
    ): Sword {
        let value = coin::value(&payment);
        assert!(value >= MIN_SWORD_COST, EInsufficientFunds);
        coin::put(&mut game.payment,payment);
        let magic = (value-MIN_SWORD_COST) / MIN_SWORD_COST;
        Sword {
            id: object::new(ctx),
            magic: min(magic,MAX_MAGIC),
            strength: 1,
            game_id: object::id(game)
        }
    }

    public fun new_hero(sword: Sword,ctx: &mut TxContext): Hero {
        Hero {
            id: object::new(ctx),
            game_id: sword.game_id,
            health: 100,
            experience: 0,
            sword: option::some(sword),
        }
    }

    public fun new_game(ctx: &mut TxContext): Admin {
        let game = Game {
            id: object::new(ctx),
            payment: balance::zero(),
        };
        let admin = Admin {
            id: object::new(ctx),
            game_id: object::id(&game),
            boars_created: 0,
            potions_created: 0,
        } ;
        transfer::share_object(game);
        admin
    }

    public fun new_potion(
        admin: &mut Admin,
        potency: u64,
        ctx: &mut TxContext
    ): Potion {
        admin.potions_created = admin.potions_created + 1;
        Potion {id: object::new(ctx), potency,game_id: admin.game_id}
    }

    public fun new_boar(
        admin: &mut Admin,
        health: u64,
        strength: u64,
        ctx: &mut TxContext
    ): Boar {
        admin.boars_created = admin.boars_created + 1;
        Boar {id: object::new(ctx),health,strength,game_id: admin.game_id}
    }

    public fun slay(hero: &mut Hero,boar: Boar, ctx: &TxContext) {
        assert!(hero.game_id == boar.game_id,EWrongGame);

        let Boar {
            id: boar_id,
            strength: boar_strength,
            health: mut boar_health,
            game_id: _
        } = boar;

        let experience = boar_health;

        loop {
            let hero_strength = hero_strength(hero);
            if (boar_health < hero_strength) {
                break
            } else {
                boar_health = boar_health - hero_strength;
            };

            assert!(hero.health >= boar_strength,EBoarWon);
            hero.health = hero.health - boar_strength;
        };

        hero.experience = hero.experience + experience;
        if (option::is_some(&hero.sword)) {
            level_up_sword(option::borrow_mut(&mut hero.sword),1)
        };

        event::emit(BoarSlainEvent {
            slayer_address: tx_context::sender(ctx),
            hero: object::id(hero),
            boar: object::uid_to_inner(&boar_id),
            game_id: hero.game_id,
        });
        object::delete(boar_id);
    }

    public fun hero_strength(hero: &Hero): u64 {
        assert!(hero.health > 0, EHeroTired);

        let sword_strength = if(option::is_some(&hero.sword)) {
            sword_strength(option::borrow(&hero.sword))
        } else {
            0
        };

        (hero.experience * hero.health) + sword_strength
    }

    fun level_up_sword(sword: &mut Sword, amount: u64) {
        sword.strength = sword.strength + amount
    }

    public fun sword_strength(sword: &Sword): u64 {
        sword.magic + sword.strength
    }






}

