```
PS F:\sui_project\602\suimove-learning\transfer-to-object\common> sui client publish --gas-budget 30000000
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING common
warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\transfer-to-object\common\sources\identified_payment.move:9:14
  │
9 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\transfer-to-object\common\sources\identified_payment.move:11:14
   │
11 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\transfer-to-object\common\sources\identified_payment.move:13:14
   │
13 │     use sui::tx_context;
   │              ^^^^^^^^^^ Unnecessary alias 'tx_context' for module 'sui::tx_context'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[Lint W99003]: sub-optimal 'sui::coin::Coin' field type
   ┌─ \\?\F:\sui_project\602\suimove-learning\transfer-to-object\common\sources\identified_payment.move:17:19
   │
17 │     public struct IdentifiedPayment has key, store {
   │                   ^^^^^^^^^^^^^^^^^ The field 'coin' of 'IdentifiedPayment' has type 'sui::coin::Coin'
   ·
20 │         coin: Coin<SUI>,
   │         ---- Storing 'sui::balance::Balance' in this field will typically be more space-efficient
   │
   = This warning can be suppressed with '#[allow(lint(coin_field))]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Please report feedback on the linter warnings at https://forums.sui.io

Successfully verified dependencies on-chain against source.
Transaction Digest: FeNnTkPnGtvUBNZvi17JQ9fQDV2aCxUvJjZ9R3KCRMT8
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
│  │ Version: 1264282                                                                                          │
│  │ Digest: 8T751NdAf58KSj51Lb9hhae9WbLicpbsP7N9zUYvk5De                                                      │
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
│    v/bjv3UARLjG2Ie6Qs5XcjyQu6pxthgNdtrkSpNwSlCEFL7+ZC01cvNEwTb6zHiBg5MsW7yV5CdgBLhxI8h7CA==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: FeNnTkPnGtvUBNZvi17JQ9fQDV2aCxUvJjZ9R3KCRMT8                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 406                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0xdec64b6e9bd329f87728c02a125664b3453dad6681c48b4305dc8438b98296cd                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: DjUjy96yhszMULcNLyTq1mfpMqu7qyqHCrg6oKDxMCtr                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xe1a63d2944f277751be89251c775df46805397650405d2e2bf8b51ae24d890ad                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264283                                                                               │
│  │ Digest: GHP5VYMot6mHM1sLgmuxvZei5V6nY1v7vZKXsak9RhdW                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264283                                                                               │
│  │ Digest: DaeaPPr5iuZuu3k9GyTz7o4cqBnrTwCyKuDAwM2nZGZ9                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264283                                                                               │
│  │ Digest: DaeaPPr5iuZuu3k9GyTz7o4cqBnrTwCyKuDAwM2nZGZ9                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 13923200 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    3Hry5CyWQUTNV5nRZTNxoWyfN9zxBEcwsYkXUyTHCrmE                                                   │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    C7HXfh7NjvDmfMJH2BtF83ChwRJiF4ha5Zg9s1fYpU1D                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0xe1a63d2944f277751be89251c775df46805397650405d2e2bf8b51ae24d890ad                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::package::UpgradeCap                                                          │
│  │ Version: 1264283                                                                              │
│  │ Digest: GHP5VYMot6mHM1sLgmuxvZei5V6nY1v7vZKXsak9RhdW                                          │
│  └──                                                                                             │
│ Mutated Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                    │
│  │ Version: 1264283                                                                              │
│  │ Digest: DaeaPPr5iuZuu3k9GyTz7o4cqBnrTwCyKuDAwM2nZGZ9                                          │
│  └──                                                                                             │
│ Published Objects:                                                                               │
│  ┌──                                                                                             │
│  │ PackageID: 0xdec64b6e9bd329f87728c02a125664b3453dad6681c48b4305dc8438b98296cd                 │
│  │ Version: 1                                                                                    │
│  │ Digest: DjUjy96yhszMULcNLyTq1mfpMqu7qyqHCrg6oKDxMCtr                                          │
│  │ Modules: identified_payment                                                                   │
│  └──                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -13945080                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
```