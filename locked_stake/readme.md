```shell
PS F:\sui_project\602\suimove-learning\locked_stake> sui client publish --gas-budget 30000000
[warn] Client/Server api version mismatch, client api version : 1.27.2, server api version : 1.28.0
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY SuiSystem
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING locked_stake
warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\locked_stake\sources\locked_stake.move:6:14
  │
6 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\locked_stake\sources\epoch_time_lock.move:4:14
  │
4 │     use sui::tx_context;
  │              ^^^^^^^^^^ Unnecessary alias 'tx_context' for module 'sui::tx_context'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Successfully verified dependencies on-chain against source.
Transaction Digest: 3pKMhozDUwLZmquDLBV8Y7YY5vUJEMiJVZ5uqk1dxWE6
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
│  │ Version: 1264296                                                                                          │
│  │ Digest: Ct6x7MCEYAuh4TUNAu3E9RNsHfiEf4nCbSDg8dw8nyyW                                                      │
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
│ │  │   0x0000000000000000000000000000000000000000000000000000000000000003 │                                  │
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
│    DgpIAzYV1cGgA0joTMqrlIc2EBHcremz+9wdbsC2H0TVglHhvs8HVGebQekuaZqYBXQCwFhwGs6gCt/jvZcuAQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 3pKMhozDUwLZmquDLBV8Y7YY5vUJEMiJVZ5uqk1dxWE6                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 416                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x5380af742fa742aa23d07dd15bcc29fce336893532a6d483a9f69bdf0e099df5                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264297                                                                               │
│  │ Digest: 7RAofKjoWSRqpxfLxMQF2jkNcxHWnw2aWWCSFE1DtbSX                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x8bdf28cf048f555e64487c2796f2fd8bdc141444143c2291d65d0aea59329177                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: 8mW8yUt6gffbLhbrgGtVNKNyyJygFPFq53m4TXnD3wPh                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264297                                                                               │
│  │ Digest: BrdQSri56H15331Sb65XJWh2mEE1Wf8LUaEHtNhzbmDq                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264297                                                                               │
│  │ Digest: BrdQSri56H15331Sb65XJWh2mEE1Wf8LUaEHtNhzbmDq                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 19190000 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    3Hry5CyWQUTNV5nRZTNxoWyfN9zxBEcwsYkXUyTHCrmE                                                   │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    HvDqx3ThVy7WfMqyQvK1uhyy5vtX6E96LqgnyAGHg7rJ                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0x5380af742fa742aa23d07dd15bcc29fce336893532a6d483a9f69bdf0e099df5                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::package::UpgradeCap                                                          │
│  │ Version: 1264297                                                                              │
│  │ Digest: 7RAofKjoWSRqpxfLxMQF2jkNcxHWnw2aWWCSFE1DtbSX                                          │
│  └──                                                                                             │
│ Mutated Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                    │
│  │ Version: 1264297                                                                              │
│  │ Digest: BrdQSri56H15331Sb65XJWh2mEE1Wf8LUaEHtNhzbmDq                                          │
│  └──                                                                                             │
│ Published Objects:                                                                               │
│  ┌──                                                                                             │
│  │ PackageID: 0x8bdf28cf048f555e64487c2796f2fd8bdc141444143c2291d65d0aea59329177                 │
│  │ Version: 1                                                                                    │
│  │ Digest: 8mW8yUt6gffbLhbrgGtVNKNyyJygFPFq53m4TXnD3wPh                                          │
│  │ Modules: epoch_time_lock, locked_stake                                                        │
│  └──                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -19211880                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯

```