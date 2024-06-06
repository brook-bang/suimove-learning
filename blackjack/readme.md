

```shell
PS F:\sui_project\602\suimove-learning\blackjack> sui client publish --gas-budget 300000000
[warn] Client/Server api version mismatch, client api version : 1.25.1, server api version : 1.26.1
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING blackjack
warning[W02021]: duplicate alias
   ┌─ .\sources\single_player_blackjack.move:11:14
   │
11 │     use sui::object;
   │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ .\sources\single_player_blackjack.move:13:14
   │
13 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09011]: unused constant
   ┌─ .\sources\single_player_blackjack.move:27:11
   │
27 │     const EUnauthorizedPlayer: u64 =14;
   │           ^^^^^^^^^^^^^^^^^^^ The constant 'EUnauthorizedPlayer' is never used. Consider removing it.
   │
   = This warning can be suppressed with '#[allow(unused_const)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ .\sources\counter_nft.move:5:14
  │
5 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ .\sources\counter_nft.move:6:14
  │
6 │     use sui::transfer;
  │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Successfully verified dependencies on-chain against source.
Transaction Digest: GzU5kbu72rgPa1P3MNXsJFoMnL2cqQnbxDimP3MLRF1v
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
│  │ Version: 1264272                                                                                          │
│  │ Digest: DWacEyo6KsnDXCj9ytxv5az5F1sF3GzpTYcgNuj74fZy                                                      │
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
│    gCweoP01PPkdooAP49qPFyIZKTuVTkFqIzO3NjM7XQ1lzis9URnAMOKdpJNQRsj0cZEHq2m11Z3qArcoWGb5DQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: GzU5kbu72rgPa1P3MNXsJFoMnL2cqQnbxDimP3MLRF1v                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 392                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x488fc41e1c7f8c0ab91aae6607e772d61e7993b10175d221c1790178d6680a58                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264273                                                                               │
│  │ Digest: 8w8RUorWEc6LgtUzZChW8yJU3cw6xPAHh1ebEeMq8tnv                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xee6cd854062873ef89ade7a0089c56651c6c7d1fb003a22b9e3e2d73e197c108                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: 5y8mg1isQSnZzoCP6mRzbbUKz42vLfHKfMHcaGiVwrsm                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xf9c993faeaae29db4b5e7edbda726d3250176dc9e4c4451699e3d7dd84723ea5                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264273                                                                               │
│  │ Digest: 5ThkBNVP1hQbS66KnsX2qUd32qAQP57FtNNY2bZmrD8q                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264273                                                                               │
│  │ Digest: HLxftSaLU3QwSurLuo4s3HxobaHuPc91ZzTH7Etbu8UF                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264273                                                                               │
│  │ Digest: HLxftSaLU3QwSurLuo4s3HxobaHuPc91ZzTH7Etbu8UF                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 42491600 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    9au69QfQwHHNVKsoW4QinXXmXxzSZMzJHepyoJPdsr9o                                                   │
│    AgYr2cmEZUBXnxqVsATHAa7b6LhHkkdEtNir9LwFCR9M                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                                             │
├────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                                           │
│  ┌──                                                                                                                       │
│  │ ObjectID: 0x488fc41e1c7f8c0ab91aae6607e772d61e7993b10175d221c1790178d6680a58                                            │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                           │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                                    │
│  │ Version: 1264273                                                                                                        │
│  │ Digest: 8w8RUorWEc6LgtUzZChW8yJU3cw6xPAHh1ebEeMq8tnv                                                                    │
│  └──                                                                                                                       │
│  ┌──                                                                                                                       │
│  │ ObjectID: 0xf9c993faeaae29db4b5e7edbda726d3250176dc9e4c4451699e3d7dd84723ea5                                            │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                           │
│  │ ObjectType: 0xee6cd854062873ef89ade7a0089c56651c6c7d1fb003a22b9e3e2d73e197c108::single_player_blackjack::HouseAdminCap  │
│  │ Version: 1264273                                                                                                        │
│  │ Digest: 5ThkBNVP1hQbS66KnsX2qUd32qAQP57FtNNY2bZmrD8q                                                                    │
│  └──                                                                                                                       │
│ Mutated Objects:                                                                                                           │
│  ┌──                                                                                                                       │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                                            │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                           │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                                              │
│  │ Version: 1264273                                                                                                        │
│  │ Digest: HLxftSaLU3QwSurLuo4s3HxobaHuPc91ZzTH7Etbu8UF                                                                    │
│  └──                                                                                                                       │
│ Published Objects:                                                                                                         │
│  ┌──                                                                                                                       │
│  │ PackageID: 0xee6cd854062873ef89ade7a0089c56651c6c7d1fb003a22b9e3e2d73e197c108                                           │
│  │ Version: 1                                                                                                              │
│  │ Digest: 5y8mg1isQSnZzoCP6mRzbbUKz42vLfHKfMHcaGiVwrsm                                                                    │
│  │ Modules: counter_nft, single_player_blackjack                                                                           │
│  └──                                                                                                                       │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -42513480                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯

```