
```
PS F:\sui_project\602\plinko> sui client publish --gas-budget 300000000
[warn] Client/Server api version mismatch, client api version : 1.25.1, server api version : 1.26.0
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING plinko
warning[W02021]: duplicate alias
  ┌─ .\sources\counter_nft.move:3:14
  │
3 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ .\sources\counter_nft.move:4:14
  │
4 │     use sui::transfer;
  │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ .\sources\house_data.move:6:14
  │
6 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ .\sources\house_data.move:9:14
  │
9 │     use sui::transfer;
  │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
  ┌─ .\sources\plinko.move:4:14
  │
4 │     use std::hash;
  │              ^^^^ Unused 'use' of alias 'hash'. Consider removing it
  │
  = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
  ┌─ .\sources\plinko.move:6:19
  │
6 │     use sui::bcs::new;
  │                   ^^^ Unused 'use' of alias 'new'. Consider removing it
  │
  = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ .\sources\plinko.move:13:14
   │
13 │     use sui::object;
   │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ .\sources\plinko.move:15:14
   │
15 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ .\sources\plinko.move:16:31
   │
16 │     use plinko::house_data::{ Self,HouseData, house};
   │                               ^^^^ Unused 'use' of alias 'house_data'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ .\sources\plinko.move:16:47
   │
16 │     use plinko::house_data::{ Self,HouseData, house};
   │                                               ^^^^^ Unused 'use' of alias 'house'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Successfully verified dependencies on-chain against source.
Transaction Digest: DmVh8bYZFsd5TCJr29JuYgw9KDooymee2uKzRgRMccbo
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                             │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                   │
│ Gas Owner: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                │
│ Gas Budget: 300000000 MIST                                                                                   │
│ Gas Price: 1000 MIST                                                                                         │
│ Gas Payment:                                                                                                 │
│  ┌──                                                                                                         │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                                    │
│  │ Version: 1264270                                                                                          │
│  │ Digest: 8zwF1UkB1T1f536xdfS6F4i7pLciSbghiFktYehVSVKE                                                      │
│  └──                                                                                                         │
│                                                                                                              │
│ Transaction Kind: Programmable                                                                               │
│ ╭──────────────────────────────────────────────────────────────────────────────────────────────────────────╮ │
│ │ Input Objects                                                                                            │ │
│ ├──────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│ │ 0   Pure Arg: Type: address, Value: "0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669" │ │
│ ╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯ │
│ ╭─────────────────────────────────────────────────────────────────────────╮                                  │
│ │ Commands                                                                │                                  │
│ ├─────────────────────────────────────────────────────────────────────────┤                                  │
│ │ 0  Publish:                                                             │                                  │
│ │  ┌                                                                      │                                  │
│ │  │ Dependencies:                                                        │                                  │
│ │  │   0x0000000000000000000000000000000000000000000000000000000000000001 │                                  │
│ │  │   0x0000000000000000000000000000000000000000000000000000000000000002 │                                  │
│ │  └                                                                      │                                  │
│ │                                                                         │                                  │
│ │ 1  TransferObjects:                                                     │                                  │
│ │  ┌                                                                      │                                  │
│ │  │ Arguments:                                                           │                                  │
│ │  │   Result 0                                                           │                                  │
│ │  │ Address: Input  0                                                    │                                  │
│ │  └                                                                      │                                  │
│ ╰─────────────────────────────────────────────────────────────────────────╯                                  │
│                                                                                                              │
│ Signatures:                                                                                                  │
│    P0KZDsKGtP1CKGSlHzyfBCdcTCag7gBUF5S76OEypSDFQu4dg+EQyAckuQKcNB+HkhNHiYvUT1kLlsFSdBUNBQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: DmVh8bYZFsd5TCJr29JuYgw9KDooymee2uKzRgRMccbo                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 389                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x32e9f9c8763f301b33d26484af983ef1f17e2806a690073da4275de020574d89                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264271                                                                               │
│  │ Digest: EwGbNKspLqPqkAF8zx9EEtzpdrwdu8nTpV1Mk7Vn6skJ                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x66148d03bc21462d153c9641c93a8b2047f8d697f11e85bf4e13f3faf28a4d6a                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264271                                                                               │
│  │ Digest: 6zSn8ZV12fTYfyuU3apBRQJh8YXmvVEVPbYVjxr8LV2v                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xb927901fe57e6b6dde40f7390af579c57b00f82417e536144dc05c4a884087a5                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: CS1W9Txj8iK9CRxQMLubqm7JrwyoWBwaB2j7VEnGMd8G                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xec9c5b32722d59b8c783a8792c901bc7f384c3cc1e5314e278dcf38f193e1a53                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264271                                                                               │
│  │ Digest: CTScQ25rpqhY4z5brQ8KwgY1WWU2xNrePv4j5pEUUAaN                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264271                                                                               │
│  │ Digest: B51BV8Grc21DW2vrxSxkZR2EnSmZxEGDZ1Q1QpKebaSF                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264271                                                                               │
│  │ Digest: B51BV8Grc21DW2vrxSxkZR2EnSmZxEGDZ1Q1QpKebaSF                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 45311200 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    9au69QfQwHHNVKsoW4QinXXmXxzSZMzJHepyoJPdsr9o                                                   │
│    Gec5c7pAxMY4NoGaK9qTX25Xnkv682cRrsJQTnuSpqkH                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                           │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                         │
│  ┌──                                                                                                     │
│  │ ObjectID: 0x32e9f9c8763f301b33d26484af983ef1f17e2806a690073da4275de020574d89                          │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                            │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )         │
│  │ ObjectType: 0xb927901fe57e6b6dde40f7390af579c57b00f82417e536144dc05c4a884087a5::house_data::HouseCap  │
│  │ Version: 1264271                                                                                      │
│  │ Digest: EwGbNKspLqPqkAF8zx9EEtzpdrwdu8nTpV1Mk7Vn6skJ                                                  │
│  └──                                                                                                     │
│  ┌──                                                                                                     │
│  │ ObjectID: 0x66148d03bc21462d153c9641c93a8b2047f8d697f11e85bf4e13f3faf28a4d6a                          │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                            │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )         │
│  │ ObjectType: 0x2::package::Publisher                                                                   │
│  │ Version: 1264271                                                                                      │
│  │ Digest: 6zSn8ZV12fTYfyuU3apBRQJh8YXmvVEVPbYVjxr8LV2v                                                  │
│  └──                                                                                                     │
│  ┌──                                                                                                     │
│  │ ObjectID: 0xec9c5b32722d59b8c783a8792c901bc7f384c3cc1e5314e278dcf38f193e1a53                          │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                            │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )         │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                  │
│  │ Version: 1264271                                                                                      │
│  │ Digest: CTScQ25rpqhY4z5brQ8KwgY1WWU2xNrePv4j5pEUUAaN                                                  │
│  └──                                                                                                     │
│ Mutated Objects:                                                                                         │
│  ┌──                                                                                                     │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                          │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                            │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )         │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                            │
│  │ Version: 1264271                                                                                      │
│  │ Digest: B51BV8Grc21DW2vrxSxkZR2EnSmZxEGDZ1Q1QpKebaSF                                                  │
│  └──                                                                                                     │
│ Published Objects:                                                                                       │
│  ┌──                                                                                                     │
│  │ PackageID: 0xb927901fe57e6b6dde40f7390af579c57b00f82417e536144dc05c4a884087a5                         │
│  │ Version: 1                                                                                            │
│  │ Digest: CS1W9Txj8iK9CRxQMLubqm7JrwyoWBwaB2j7VEnGMd8G                                                  │
│  │ Modules: counter_nft, house_data, plinko                                                              │
│  └──                                                                                                     │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -45333080                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
```