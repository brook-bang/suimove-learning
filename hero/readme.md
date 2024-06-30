```shell
PS F:\sui_project\602\suimove-learning\hero> sui client publish --gas-budget 300000000
[warn] Client/Server api version mismatch, client api version : 1.27.2, server api version : 1.28.0
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING hero
warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:4:14
  │
4 │     use std::option;
  │              ^^^^^^ Unnecessary alias 'option' for module 'std::option'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:5:22
  │
5 │     use std::option::swap_or_fill;
  │                      ^^^^^^^^^^^^ Unused 'use' of alias 'swap_or_fill'. Consider removing it
  │
  = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:12:14
   │
12 │     use sui::object;
   │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:14:21
   │
14 │     use sui::token::has_rule_config;
   │                     ^^^^^^^^^^^^^^^ Unused 'use' of alias 'has_rule_config'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:15:14
   │
15 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:16:14
   │
16 │     use sui::tx_context;
   │              ^^^^^^^^^^ Unnecessary alias 'tx_context' for module 'sui::tx_context'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09011]: unused constant
   ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:65:11
   │
65 │     const MAX_HP :u64 = 1000;
   │           ^^^^^^ The constant 'MAX_HP' is never used. Consider removing it.
   │
   = This warning can be suppressed with '#[allow(unused_const)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09011]: unused constant
   ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:72:11
   │
72 │     const ENotAdmin: u64 =3;
   │           ^^^^^^^^^ The constant 'ENotAdmin' is never used. Consider removing it.
   │
   = This warning can be suppressed with '#[allow(unused_const)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09011]: unused constant
   ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:74:11
   │
74 │     const EAlreadyEquipped: u64 =6;
   │           ^^^^^^^^^^^^^^^^ The constant 'EAlreadyEquipped' is never used. Consider removing it.
   │
   = This warning can be suppressed with '#[allow(unused_const)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09011]: unused constant
   ┌─ \\?\F:\sui_project\602\suimove-learning\hero\sources\hero.move:75:11
   │
75 │     const ENotEquipped: u64 =7;
   │           ^^^^^^^^^^^^ The constant 'ENotEquipped' is never used. Consider removing it.
   │
   = This warning can be suppressed with '#[allow(unused_const)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Successfully verified dependencies on-chain against source.
Transaction Digest: EFiNKRCS6ianQdxtN95GBPmTGw31jUZfPZg9irbRVjvQ
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
│  │ Version: 1264297                                                                                          │
│  │ Digest: BrdQSri56H15331Sb65XJWh2mEE1Wf8LUaEHtNhzbmDq                                                      │
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
│    jxVfcEQNEuSx3uqMRLXVp+knLMrgweY3IoIB++lr/XeEcCVDo5ixqeIaVsArLs6OFaEwD6VYxZMaFY2RIjtdDA==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: EFiNKRCS6ianQdxtN95GBPmTGw31jUZfPZg9irbRVjvQ                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 416                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x795bbb241367c02c30ba73b58ca450b4f852a964dff54e18b70dd76080d8da54                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: 97uXLxUh2nWgmBa3mWFAyUhtLvYXiVfXnHd1Xzq7jQSN                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xb057cb8c8100f67508219b8b5c0b01095dbde376dac82fea3ebfb76c354dc6fc                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264298                                                                               │
│  │ Digest: C8kWhzN1RsaeWmM3Xh2r17M1vRCNTDsyeqHz37U2Bfq1                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264298                                                                               │
│  │ Digest: Fb58MRKqCGDfiEkkc9Zm9CMWnQkVvTXE6HGQf5ZjABZj                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264298                                                                               │
│  │ Digest: Fb58MRKqCGDfiEkkc9Zm9CMWnQkVvTXE6HGQf5ZjABZj                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 20877200 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    3Hry5CyWQUTNV5nRZTNxoWyfN9zxBEcwsYkXUyTHCrmE                                                   │
│    3pKMhozDUwLZmquDLBV8Y7YY5vUJEMiJVZ5uqk1dxWE6                                                   │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0xb057cb8c8100f67508219b8b5c0b01095dbde376dac82fea3ebfb76c354dc6fc                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::package::UpgradeCap                                                          │
│  │ Version: 1264298                                                                              │
│  │ Digest: C8kWhzN1RsaeWmM3Xh2r17M1vRCNTDsyeqHz37U2Bfq1                                          │
│  └──                                                                                             │
│ Mutated Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                    │
│  │ Version: 1264298                                                                              │
│  │ Digest: Fb58MRKqCGDfiEkkc9Zm9CMWnQkVvTXE6HGQf5ZjABZj                                          │
│  └──                                                                                             │
│ Published Objects:                                                                               │
│  ┌──                                                                                             │
│  │ PackageID: 0x795bbb241367c02c30ba73b58ca450b4f852a964dff54e18b70dd76080d8da54                 │
│  │ Version: 1                                                                                    │
│  │ Digest: 97uXLxUh2nWgmBa3mWFAyUhtLvYXiVfXnHd1Xzq7jQSN                                          │
│  │ Modules: hero                                                                                 │
│  └──                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -20899080                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯

```