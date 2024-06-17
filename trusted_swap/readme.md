```shell
PS F:\sui_project\602\suimove-learning\trusted_swap> sui client publish --gas-budget 30000000 --skip-fetch-latest-git-deps --skip-dependency-verification
[warn] Client/Server api version mismatch, client api version : 1.26.2, server api version : 1.27.2
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING trusted_swap
warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\trusted_swap\sources\trusted_swap.move:8:14
  │
8 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\trusted_swap\sources\trusted_swap.move:10:14
   │
10 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\trusted_swap\sources\trusted_swap.move:11:14
   │
11 │     use sui::tx_context;
   │              ^^^^^^^^^^ Unnecessary alias 'tx_context' for module 'sui::tx_context'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Skipping dependency verification
Transaction Digest: C7HXfh7NjvDmfMJH2BtF83ChwRJiF4ha5Zg9s1fYpU1D
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
│  │ Version: 1264281                                                                                          │
│  │ Digest: 53XSX1N69UxSLw1DX7pRDxLhRZY64j6ncy6dyJociQhc                                                      │
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
│    74XFE710DKUagr4n6TV3oQv5CdFZaD4QEiy4POuHGTAzaoEVSn/T4KDV4k2zoDDYJIXaHA9HvEvYs6V39DyqAg==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: C7HXfh7NjvDmfMJH2BtF83ChwRJiF4ha5Zg9s1fYpU1D                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 403                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x3ea3042ea1b0f70d9dc8776e52a266a80eaefea9f0afb7512e964ea54b51d4a9                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264282                                                                               │
│  │ Digest: Fg1pmXBXcZr2F5X8ahBCJV8Ys2XwP1epBRKyDczndnTR                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x67457a942a0c57ffe5b22dad426081929d3562d99566e274aac648e88a0115c2                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: AoyMP6H2pnKoZ3jTf5ndPqH5EspZxYpY8KyMhjQHNC6G                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264282                                                                               │
│  │ Digest: 8T751NdAf58KSj51Lb9hhae9WbLicpbsP7N9zUYvk5De                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264282                                                                               │
│  │ Digest: 8T751NdAf58KSj51Lb9hhae9WbLicpbsP7N9zUYvk5De                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 11027600 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    3Hry5CyWQUTNV5nRZTNxoWyfN9zxBEcwsYkXUyTHCrmE                                                   │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    BWN95uL8FyRGUo3bc9FHG9yFDtJRL3snzgYsT4ZMXwXS                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0x3ea3042ea1b0f70d9dc8776e52a266a80eaefea9f0afb7512e964ea54b51d4a9                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::package::UpgradeCap                                                          │
│  │ Version: 1264282                                                                              │
│  │ Digest: Fg1pmXBXcZr2F5X8ahBCJV8Ys2XwP1epBRKyDczndnTR                                          │
│  └──                                                                                             │
│ Mutated Objects:                                                                                 │
│  ┌──                                                                                             │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 ) │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                    │
│  │ Version: 1264282                                                                              │
│  │ Digest: 8T751NdAf58KSj51Lb9hhae9WbLicpbsP7N9zUYvk5De                                          │
│  └──                                                                                             │
│ Published Objects:                                                                               │
│  ┌──                                                                                             │
│  │ PackageID: 0x67457a942a0c57ffe5b22dad426081929d3562d99566e274aac648e88a0115c2                 │
│  │ Version: 1                                                                                    │
│  │ Digest: AoyMP6H2pnKoZ3jTf5ndPqH5EspZxYpY8KyMhjQHNC6G                                          │
│  │ Modules: trusted_swap                                                                         │
│  └──                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -11049480                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
```