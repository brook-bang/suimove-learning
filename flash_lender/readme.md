```shell
PS F:\sui_project\602\suimove-learning\flash_lender> sui client publish --gas-budget 30000000
[warn] Client/Server api version mismatch, client api version : 1.27.2, server api version : 1.28.2
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING flash_lender
warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\flash_lender\sources\flash_lender.move:8:14
  │
8 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\flash_lender\sources\flash_lender.move:10:14
   │
10 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Successfully verified dependencies on-chain against source.
Transaction Digest: icestiPWV6nFmjSXaRMkUnNv7PW5k9gQ17PJ8GT9yGj
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
│  │ Version: 1264298                                                                                          │
│  │ Digest: Fb58MRKqCGDfiEkkc9Zm9CMWnQkVvTXE6HGQf5ZjABZj                                                      │
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
│    cj9EqI5vpaCfkmqNKSk/Klo+3Gm/OSfTFYlcR80YhgyBYyH4prI6OGONaA6Ln+6XQAEB/vPc5SLk6f+YrSvUDA==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: icestiPWV6nFmjSXaRMkUnNv7PW5k9gQ17PJ8GT9yGj                                               │
│ Status: Success                                                                                   │
│ Executed Epoch: 418                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x6c3d18896fb51b7f1153756f365777e3e4b58accf1f6a4316f441d908f151ebc                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: GYEJZcVv5GaLpJ9Rb2vZ2m9Bw9qYTNPZ95pGv3XJPdnQ                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x7f94fbc8983f2bffb24d3ae110b709728d561f30b5580b19c79754e1de3e17e3                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264299                                                                               │
│  │ Digest: 5DQzDXqvJcyMdzsA35RJj3SQQSkh7XLRjMTpnXNcMtNS                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264299                                                                               │
│  │ Digest: 7DVSWfZPsqBgN6BRAvdwQVP2AYaD1zmjjgLBQFy9qkM2                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264299                                                                               │
│  │ Digest: 7DVSWfZPsqBgN6BRAvdwQVP2AYaD1zmjjgLBQFy9qkM2                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 14880800 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    3Hry5CyWQUTNV5nRZTNxoWyfN9zxBEcwsYkXUyTHCrmE                                                   │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    EFiNKRCS6ianQdxtN95GBPmTGw31jUZfPZg9irbRVjvQ                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0x7f94fbc8983f2bffb24d3ae110b709728d561f30b5580b19c79754e1de3e17e3                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::package::UpgradeCap                                                          │
│  │ Version: 1264299                                                                              │
│  │ Digest: 5DQzDXqvJcyMdzsA35RJj3SQQSkh7XLRjMTpnXNcMtNS                                          │
│  └──                                                                                             │
│ Mutated Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                    │
│  │ Version: 1264299                                                                              │
│  │ Digest: 7DVSWfZPsqBgN6BRAvdwQVP2AYaD1zmjjgLBQFy9qkM2                                          │
│  └──                                                                                             │
│ Published Objects:                                                                               │
│  ┌──                                                                                             │
│  │ PackageID: 0x6c3d18896fb51b7f1153756f365777e3e4b58accf1f6a4316f441d908f151ebc                 │
│  │ Version: 1                                                                                    │
│  │ Digest: GYEJZcVv5GaLpJ9Rb2vZ2m9Bw9qYTNPZ95pGv3XJPdnQ                                          │
│  │ Modules: flash_lender                                                                         │
│  └──                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -14902680                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
```