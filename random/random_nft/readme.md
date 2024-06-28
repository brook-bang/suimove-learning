```shell
PS F:\sui_project\602\suimove-learning\random\random_nft> sui client publish --gas-budget 30000000
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING random_nft
warning[W09001]: unused alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\random\random_nft\sources\random_nft.move:3:22
  │
3 │     use std::string::String;
  │                      ^^^^^^ Unused 'use' of alias 'String'. Consider removing it
  │
  = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\random\random_nft\sources\random_nft.move:4:14
  │
4 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\random\random_nft\sources\random_nft.move:7:14
  │
7 │     use sui::transfer;
  │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Successfully verified dependencies on-chain against source.
Transaction Digest: EhH6GUxS8iDKmDc5Nqcq2Xf3ovpw7y7NnnyBf5E9miQj
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                             │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                   │
│ Gas Owner: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                │
│ Gas Budget: 30000000 MIST                                                                                    │
│ Gas Price: 1000 MIST                                                                                         │
│ Gas Payment:                                                                                                 │
│  ┌──                                                                                                         │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                                    │
│  │ Version: 1264289                                                                                          │
│  │ Digest: AwSHwbysHyhjC8gVipfaMR11XKHHtN68KLK1DPmjDmNU                                                      │
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
│    Jayp0POTNWbTO8yhfxWAatl09h/DoUt7h5cAUjrBkneOuABqYoEDgQ+5xjC5jrllsaWZsUu0+s6Y2+NUef0vCw==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: EhH6GUxS8iDKmDc5Nqcq2Xf3ovpw7y7NnnyBf5E9miQj                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 414                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x9be79bd6ef45b79570f1a8d0642a2f35709eadf985ae4fa4c732b2780252d645                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264290                                                                               │
│  │ Digest: E4nwcDGX4jSJ7gx4Cmuh335tm9tvfj8TDc75WvASDKJM                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xae6a61687e7a37c571e764c9416e1ecca7a8b4c82dd80afedb9e4a4860097262                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: 41hKfaNDoy4aERz13gY9gPk6qVTfEundGP4SkipMMa1Q                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xf98d0b2480c4a6821a5751ddd421ff2c62c3b8c63f4fd66be4ca405f4afb2909                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264290                                                                               │
│  │ Digest: CAmhupDHoogoYbPtqPMqbsqqL7L1RFcwPCb2sqgH9rHz                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264290                                                                               │
│  │ Digest: 8arFurX7wmGS7571YD4ZTGSVJVcSfeyKvJVBtJjazCUt                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264290                                                                               │
│  │ Digest: 8arFurX7wmGS7571YD4ZTGSVJVcSfeyKvJVBtJjazCUt                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 16712400 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    3Hry5CyWQUTNV5nRZTNxoWyfN9zxBEcwsYkXUyTHCrmE                                                   │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    EZoGKGNiaShZDUz2Ken2XYSdRFsSbW1jubjCUNEgAfJH                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                                 │
│  ┌──                                                                                                             │
│  │ ObjectID: 0x9be79bd6ef45b79570f1a8d0642a2f35709eadf985ae4fa4c732b2780252d645                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                 │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                          │
│  │ Version: 1264290                                                                                              │
│  │ Digest: E4nwcDGX4jSJ7gx4Cmuh335tm9tvfj8TDc75WvASDKJM                                                          │
│  └──                                                                                                             │
│  ┌──                                                                                                             │
│  │ ObjectID: 0xf98d0b2480c4a6821a5751ddd421ff2c62c3b8c63f4fd66be4ca405f4afb2909                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                 │
│  │ ObjectType: 0xae6a61687e7a37c571e764c9416e1ecca7a8b4c82dd80afedb9e4a4860097262::random_nft::MintingCapablity  │
│  │ Version: 1264290                                                                                              │
│  │ Digest: CAmhupDHoogoYbPtqPMqbsqqL7L1RFcwPCb2sqgH9rHz                                                          │
│  └──                                                                                                             │
│ Mutated Objects:                                                                                                 │
│  ┌──                                                                                                             │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                 │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                                    │
│  │ Version: 1264290                                                                                              │
│  │ Digest: 8arFurX7wmGS7571YD4ZTGSVJVcSfeyKvJVBtJjazCUt                                                          │
│  └──                                                                                                             │
│ Published Objects:                                                                                               │
│  ┌──                                                                                                             │
│  │ PackageID: 0xae6a61687e7a37c571e764c9416e1ecca7a8b4c82dd80afedb9e4a4860097262                                 │
│  │ Version: 1                                                                                                    │
│  │ Digest: 41hKfaNDoy4aERz13gY9gPk6qVTfEundGP4SkipMMa1Q                                                          │
│  │ Modules: random_nft                                                                                           │
│  └──                                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -16734280                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯

```