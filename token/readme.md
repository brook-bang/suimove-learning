```shell
PS F:\sui_project\602\suimove-learning\token> sui client publish --gas-budget 3000000000
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING token
warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\rules\denylist_rule.move:3:14
  │
3 │     use std::option;
  │              ^^^^^^ Unnecessary alias 'option' for module 'std::option'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\rules\denylist_rule.move:4:14
  │
4 │     use std::vector;
  │              ^^^^^^ Unnecessary alias 'vector' for module 'std::vector'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\coffee.move:3:14
  │
3 │     use std::option;
  │              ^^^^^^ Unnecessary alias 'option' for module 'std::option'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\coffee.move:8:14
  │
8 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\coffee.move:12:14
   │
12 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\regulated_token.move:3:14
  │
3 │     use std::option;
  │              ^^^^^^ Unnecessary alias 'option' for module 'std::option'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\regulated_token.move:5:21
  │
5 │     use sui::coin::{create_currency, TreasuryCap};
  │                     ^^^^^^^^^^^^^^^ Unused 'use' of alias 'create_currency'. Consider removing it
  │
  = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\regulated_token.move:7:22
  │
7 │     use sui::token::{Token, TokenPolicy, TokenPolicyCap};
  │                      ^^^^^ Unused 'use' of alias 'Token'. Consider removing it
  │
  = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\regulated_token.move:8:14
  │
8 │     use sui::transfer;
  │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
   ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\regulated_token.move:41:13
   │
41 │         let config = {
   │             ^^^^^^ Unused local variable 'config'. Consider removing or prefixing with an underscore: '_config'
   │
   = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\gems.move:3:14
  │
3 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\gems.move:34:14
   │
34 │     use sui::object;
   │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\gems.move:38:14
   │
38 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\rules\allowlist_rule.move:3:14
  │
3 │     use std::option;
  │              ^^^^^^ Unnecessary alias 'option' for module 'std::option'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\rules\allowlist_rule.move:4:14
  │
4 │     use std::vector;
  │              ^^^^^^ Unnecessary alias 'vector' for module 'std::vector'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\simple_token.move:3:14
  │
3 │     use std::option;
  │              ^^^^^^ Unnecessary alias 'option' for module 'std::option'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\simple_token.move:8:14
  │
8 │     use sui::transfer;
  │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\rules\limiter_rule.move:5:22
  │
5 │     use sui::token::{Token, TokenPolicy, ActionRequest, action, TokenPolicyCap};
  │                      ^^^^^ Unused 'use' of alias 'Token'. Consider removing it
  │
  = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\rules\limiter_rule.move:5:57
  │
5 │     use sui::token::{Token, TokenPolicy, ActionRequest, action, TokenPolicyCap};
  │                                                         ^^^^^^ Unused 'use' of alias 'action'. Consider removing it
  │
  = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\loyalty.move:3:14
  │
3 │     use std::option;
  │              ^^^^^^ Unnecessary alias 'option' for module 'std::option'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\loyalty.move:7:14
  │
7 │     use sui::transfer;
  │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\loyalty.move:8:14
  │
8 │     use sui::tx_context;
  │              ^^^^^^^^^^ Unnecessary alias 'tx_context' for module 'sui::tx_context'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09011]: unused constant
   ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\loyalty.move:10:11
   │
10 │     const EIncorrectAmount: u64 = 0;
   │           ^^^^^^^^^^^^^^^^ The constant 'EIncorrectAmount' is never used. Consider removing it.
   │
   = This warning can be suppressed with '#[allow(unused_const)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09011]: unused constant
   ┌─ \\?\F:\sui_project\602\suimove-learning\token\sources\loyalty.move:12:11
   │
12 │     const GIFT_PRICE: u64 = 10;
   │           ^^^^^^^^^^ The constant 'GIFT_PRICE' is never used. Consider removing it.
   │
   = This warning can be suppressed with '#[allow(unused_const)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Successfully verified dependencies on-chain against source.
Transaction Digest: 8u2mgsxfb9z68fcMpwccXZVSGjDAY9vHSa9rFanmutDH
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                             │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                   │
│ Gas Owner: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                │
│ Gas Budget: 3000000000 MIST                                                                                  │
│ Gas Price: 1000 MIST                                                                                         │
│ Gas Payment:                                                                                                 │
│  ┌──                                                                                                         │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                                    │
│  │ Version: 1264287                                                                                          │
│  │ Digest: EwLJe2oRBuKx5vZ5ny3faibiHheEW4fEsYT5SubRkVjU                                                      │
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
│    hl2es3QkRfpYFocRRPlwdhP+3WAHGhgG0v+aeWY+mYGsj5Ts+A0+l5yDAumpUV+LsMQuMeSb0Ryh2ucMQXgRAA==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 8u2mgsxfb9z68fcMpwccXZVSGjDAY9vHSa9rFanmutDH                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 411                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x04f6fab30a86a54e8cfdc3e5e08385ff86a48a9e022069ccd9fbc0a2578cad30                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: Arxo2p3TpYaiQYkSG5r5Jk9x2AM9wfpfryZb73QJrSDi                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x19c1186802b15a22bf45bd607071d5f4df6aeb62d7aefc0db174f515c38e584d                         │
│  │ Owner: Shared( 1264288 )                                                                       │
│  │ Version: 1264288                                                                               │
│  │ Digest: GpEpkuESxTyXYpSreczyM7yQe3JJQSutKzLLCw7NaRd5                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x25e7989644959645f9f07706202577a25d02d41084d0f2d74c8ff7632a5d009b                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1264288                                                                               │
│  │ Digest: BNQ7fnhF3Ce58dkBt8H2GULuotqBTg8V7LPzWFZW249o                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x2bf1d388fcd2403f2288358541b2eb7e1d4fe63cff8d2c54b81cd886adcea95b                         │
│  │ Owner: Shared( 1264288 )                                                                       │
│  │ Version: 1264288                                                                               │
│  │ Digest: 3zHW6nfTrso4s3sXdf6xvLwsmwMb9n4LSFttHgYf2u3L                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x3425360e438a5fd75555cfe665f78567c5b8b2c5d31224a929a58c716ffe8788                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1264288                                                                               │
│  │ Digest: EiZh2F8By2xE5Hsfwhkj1ysyp4jckP4X2z8zd1z7fsyi                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x379b8feae3a23754b3f70044a70af98531ad0574ab6d3fa497a217a18947f3d3                         │
│  │ Owner: Shared( 1264288 )                                                                       │
│  │ Version: 1264288                                                                               │
│  │ Digest: 6uzybqg5LshxC5FAMc4Cp6b5xqwbWrHjnX2r1bsGGb7e                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: G3hfAFjMoYz7oG8miA9tDJ5ikGKx5oPMhTedZYv5oGAJ                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x5212e9707312972f69cba883d087d5d97cfead8e6d7149158b8ce369665b5e8a                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: 5H3fULbz6Pavk8p27TF92WNzBuBKH5nEWiv7Fy4GUhnk                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x57801c899def56232db59be5f103d7c1e33ee76fff376d9ab815ffc6cca9fad4                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1264288                                                                               │
│  │ Digest: 5qYne3dcQR2t3u2Zi2r1UU7pUCKBTecwxNEVa5nZ2hNE                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x687ebc9897b501ad38e1a10a09ac4b31b7ce7f9a16f5796b2225710b077a2c62                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1264288                                                                               │
│  │ Digest: FnLQo4kgcu8TzNATBKXuimrc421RiWNUhzprYP2xRVpV                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x6da49a537247c96759d2e06e0743404a49289e02c8fce4e449296268426d2033                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: EN86V8HTHMhDdwQnAbuvNwChFH4Maokj3gF7y9SdQase                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x7b813bb49ae1a6769c8196f906419592306de41030346973798507bbb09631ff                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1264288                                                                               │
│  │ Digest: 3VssHKCuhs2GcwGZUF1KabLvdabsD52N6q48cwYa3XnC                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x8890c90fa27be344ac90109795c11a7d5d1dec9830b9baf1c02f6725ae522f97                         │
│  │ Owner: Shared( 1264288 )                                                                       │
│  │ Version: 1264288                                                                               │
│  │ Digest: 2vtFA3Eo7rEfD86drSKhamq3PLX1oDKaLPvu5yCLAC8S                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x8ef99375696c53757bff137e8c0440ccdb2eaf863e6fefce4e77ff0bc4e6b315                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: FEBxQQAgmYdeQTL4AQB93nk5S8aN8Xjgr19xmVKjPNgc                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x8f6f2cc27e6cd439fbdb01df93f5871236a6ae59a0093345cac2f4c6c847fe52                         │
│  │ Owner: Shared( 1264288 )                                                                       │
│  │ Version: 1264288                                                                               │
│  │ Digest: FhRcqmcjYhhsGMWJ37P34SKjRfaR2RgkQRWUDb5TJ9C2                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x90013adeed4ed2273e9aa6ea8fd17fd0364f1e18a95813a9ea97b542a6f8cdb8                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: 7fxp8c2dkSuEhyRMpYDVkJpf6xyF2Lznj3GBN8Xpgod8                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x914d2539805019d6d7529f688abb5ea6b1d4cf8ca4e2e4f7b02adf83d7adcc02                         │
│  │ Owner: Shared( 1264288 )                                                                       │
│  │ Version: 1264288                                                                               │
│  │ Digest: HvBejNFVzCbSakwk7WiQ7b8U4icRUxZ2A3X7DVxwa278                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x940d6442ed3b7b31979818e402a1720730c7c1503f395275198b11d9ec3e484f                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: H4h6DLgtbYuR22KiJkJFqezzZ7GJM4p8jsnWDY1EPitS                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xa11112c7855250ea420fa82f702258717bfc3c2483be1233f89013bb42614ae2                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: 7wdcTi88iypfgBFeXUGxXsbTteHk4ZVrJ1s4sJPbhQQD                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xc3992187cca82e10784a00623209b36ee5f3984ad05a09d71b6ee7bcc627af2f                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: 967SixEDHY4Lb5JocaVTZkcbq5PuoW8Lv89e2PAiDheQ                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: EzrLSeQTCBzgX8q4cbsZJFQrTEycDwRmXUuH5xuTD28A                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264288                                                                               │
│  │ Digest: EzrLSeQTCBzgX8q4cbsZJFQrTEycDwRmXUuH5xuTD28A                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 133129200 MIST                                                                   │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    3Hry5CyWQUTNV5nRZTNxoWyfN9zxBEcwsYkXUyTHCrmE                                                   │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    C3ZTCQFyFRVLmkN9DZCfoRitbM7Xo8QUGM7TatmMAqdr                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Block Events                                                                                                                           │
├────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                                                                               │
│  │ EventID: 8u2mgsxfb9z68fcMpwccXZVSGjDAY9vHSa9rFanmutDH:0                                                                                         │
│  │ PackageID: 0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76                                                                   │
│  │ Transaction Module: gem                                                                                                                         │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                      │
│  │ EventType: 0x2::token::TokenPolicyCreated<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::gem::GEM>                         │
│  │ ParsedJSON:                                                                                                                                     │
│  │   ┌────────────┬────────────────────────────────────────────────────────────────────┐                                                           │
│  │   │ id         │ 0x379b8feae3a23754b3f70044a70af98531ad0574ab6d3fa497a217a18947f3d3 │                                                           │
│  │   ├────────────┼────────────────────────────────────────────────────────────────────┤                                                           │
│  │   │ is_mutable │ true                                                               │                                                           │
│  │   └────────────┴────────────────────────────────────────────────────────────────────┘                                                           │
│  └──                                                                                                                                               │
│  ┌──                                                                                                                                               │
│  │ EventID: 8u2mgsxfb9z68fcMpwccXZVSGjDAY9vHSa9rFanmutDH:1                                                                                         │
│  │ PackageID: 0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76                                                                   │
│  │ Transaction Module: loyalty                                                                                                                     │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                      │
│  │ EventType: 0x2::token::TokenPolicyCreated<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::loyalty::LOYALTY>                 │
│  │ ParsedJSON:                                                                                                                                     │
│  │   ┌────────────┬────────────────────────────────────────────────────────────────────┐                                                           │
│  │   │ id         │ 0x914d2539805019d6d7529f688abb5ea6b1d4cf8ca4e2e4f7b02adf83d7adcc02 │                                                           │
│  │   ├────────────┼────────────────────────────────────────────────────────────────────┤                                                           │
│  │   │ is_mutable │ true                                                               │                                                           │
│  │   └────────────┴────────────────────────────────────────────────────────────────────┘                                                           │
│  └──                                                                                                                                               │
│  ┌──                                                                                                                                               │
│  │ EventID: 8u2mgsxfb9z68fcMpwccXZVSGjDAY9vHSa9rFanmutDH:2                                                                                         │
│  │ PackageID: 0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76                                                                   │
│  │ Transaction Module: regulated_token                                                                                                             │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                      │
│  │ EventType: 0x2::token::TokenPolicyCreated<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::regulated_token::REGULATED_TOKEN> │
│  │ ParsedJSON:                                                                                                                                     │
│  │   ┌────────────┬────────────────────────────────────────────────────────────────────┐                                                           │
│  │   │ id         │ 0x8f6f2cc27e6cd439fbdb01df93f5871236a6ae59a0093345cac2f4c6c847fe52 │                                                           │
│  │   ├────────────┼────────────────────────────────────────────────────────────────────┤                                                           │
│  │   │ is_mutable │ true                                                               │                                                           │
│  │   └────────────┴────────────────────────────────────────────────────────────────────┘                                                           │
│  └──                                                                                                                                               │
│  ┌──                                                                                                                                               │
│  │ EventID: 8u2mgsxfb9z68fcMpwccXZVSGjDAY9vHSa9rFanmutDH:3                                                                                         │
│  │ PackageID: 0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76                                                                   │
│  │ Transaction Module: simple_token                                                                                                                │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                      │
│  │ EventType: 0x2::token::TokenPolicyCreated<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::simple_token::SIMPLE_TOKEN>       │
│  │ ParsedJSON:                                                                                                                                     │
│  │   ┌────────────┬────────────────────────────────────────────────────────────────────┐                                                           │
│  │   │ id         │ 0x19c1186802b15a22bf45bd607071d5f4df6aeb62d7aefc0db174f515c38e584d │                                                           │
│  │   ├────────────┼────────────────────────────────────────────────────────────────────┤                                                           │
│  │   │ is_mutable │ true                                                               │                                                           │
│  │   └────────────┴────────────────────────────────────────────────────────────────────┘                                                           │
│  └──                                                                                                                                               │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                                                                 │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x04f6fab30a86a54e8cfdc3e5e08385ff86a48a9e022069ccd9fbc0a2578cad30                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::coin::TreasuryCap<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::simple_token::SIMPLE_TOKEN>            │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: Arxo2p3TpYaiQYkSG5r5Jk9x2AM9wfpfryZb73QJrSDi                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x19c1186802b15a22bf45bd607071d5f4df6aeb62d7aefc0db174f515c38e584d                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Shared( 1264288 )                                                                                                                      │
│  │ ObjectType: 0x2::token::TokenPolicy<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::simple_token::SIMPLE_TOKEN>           │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: GpEpkuESxTyXYpSreczyM7yQe3JJQSutKzLLCw7NaRd5                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x25e7989644959645f9f07706202577a25d02d41084d0f2d74c8ff7632a5d009b                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Immutable                                                                                                                              │
│  │ ObjectType: 0x2::coin::CoinMetadata<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::coffee::COFFEE>                       │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: BNQ7fnhF3Ce58dkBt8H2GULuotqBTg8V7LPzWFZW249o                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x2bf1d388fcd2403f2288358541b2eb7e1d4fe63cff8d2c54b81cd886adcea95b                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Shared( 1264288 )                                                                                                                      │
│  │ ObjectType: 0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::coffee::CoffeeShop                                            │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 3zHW6nfTrso4s3sXdf6xvLwsmwMb9n4LSFttHgYf2u3L                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x3425360e438a5fd75555cfe665f78567c5b8b2c5d31224a929a58c716ffe8788                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Immutable                                                                                                                              │
│  │ ObjectType: 0x2::coin::CoinMetadata<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::regulated_token::REGULATED_TOKEN>     │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: EiZh2F8By2xE5Hsfwhkj1ysyp4jckP4X2z8zd1z7fsyi                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x379b8feae3a23754b3f70044a70af98531ad0574ab6d3fa497a217a18947f3d3                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Shared( 1264288 )                                                                                                                      │
│  │ ObjectType: 0x2::token::TokenPolicy<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::gem::GEM>                             │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 6uzybqg5LshxC5FAMc4Cp6b5xqwbWrHjnX2r1bsGGb7e                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x5212e9707312972f69cba883d087d5d97cfead8e6d7149158b8ce369665b5e8a                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::token::TokenPolicyCap<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::regulated_token::REGULATED_TOKEN>  │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 5H3fULbz6Pavk8p27TF92WNzBuBKH5nEWiv7Fy4GUhnk                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x57801c899def56232db59be5f103d7c1e33ee76fff376d9ab815ffc6cca9fad4                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Immutable                                                                                                                              │
│  │ ObjectType: 0x2::coin::CoinMetadata<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::gem::GEM>                             │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 5qYne3dcQR2t3u2Zi2r1UU7pUCKBTecwxNEVa5nZ2hNE                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x687ebc9897b501ad38e1a10a09ac4b31b7ce7f9a16f5796b2225710b077a2c62                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Immutable                                                                                                                              │
│  │ ObjectType: 0x2::coin::CoinMetadata<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::loyalty::LOYALTY>                     │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: FnLQo4kgcu8TzNATBKXuimrc421RiWNUhzprYP2xRVpV                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x6da49a537247c96759d2e06e0743404a49289e02c8fce4e449296268426d2033                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::coin::TreasuryCap<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::loyalty::LOYALTY>                      │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: EN86V8HTHMhDdwQnAbuvNwChFH4Maokj3gF7y9SdQase                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x7b813bb49ae1a6769c8196f906419592306de41030346973798507bbb09631ff                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Immutable                                                                                                                              │
│  │ ObjectType: 0x2::coin::CoinMetadata<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::simple_token::SIMPLE_TOKEN>           │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 3VssHKCuhs2GcwGZUF1KabLvdabsD52N6q48cwYa3XnC                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x8890c90fa27be344ac90109795c11a7d5d1dec9830b9baf1c02f6725ae522f97                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Shared( 1264288 )                                                                                                                      │
│  │ ObjectType: 0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::gem::GemStore                                                 │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 2vtFA3Eo7rEfD86drSKhamq3PLX1oDKaLPvu5yCLAC8S                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x8ef99375696c53757bff137e8c0440ccdb2eaf863e6fefce4e77ff0bc4e6b315                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                                                          │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: FEBxQQAgmYdeQTL4AQB93nk5S8aN8Xjgr19xmVKjPNgc                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x8f6f2cc27e6cd439fbdb01df93f5871236a6ae59a0093345cac2f4c6c847fe52                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Shared( 1264288 )                                                                                                                      │
│  │ ObjectType: 0x2::token::TokenPolicy<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::regulated_token::REGULATED_TOKEN>     │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: FhRcqmcjYhhsGMWJ37P34SKjRfaR2RgkQRWUDb5TJ9C2                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x90013adeed4ed2273e9aa6ea8fd17fd0364f1e18a95813a9ea97b542a6f8cdb8                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::coin::TreasuryCap<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::regulated_token::REGULATED_TOKEN>      │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 7fxp8c2dkSuEhyRMpYDVkJpf6xyF2Lznj3GBN8Xpgod8                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x914d2539805019d6d7529f688abb5ea6b1d4cf8ca4e2e4f7b02adf83d7adcc02                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Shared( 1264288 )                                                                                                                      │
│  │ ObjectType: 0x2::token::TokenPolicy<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::loyalty::LOYALTY>                     │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: HvBejNFVzCbSakwk7WiQ7b8U4icRUxZ2A3X7DVxwa278                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x940d6442ed3b7b31979818e402a1720730c7c1503f395275198b11d9ec3e484f                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::token::TokenPolicyCap<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::loyalty::LOYALTY>                  │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: H4h6DLgtbYuR22KiJkJFqezzZ7GJM4p8jsnWDY1EPitS                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0xa11112c7855250ea420fa82f702258717bfc3c2483be1233f89013bb42614ae2                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::token::TokenPolicyCap<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::simple_token::SIMPLE_TOKEN>        │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 7wdcTi88iypfgBFeXUGxXsbTteHk4ZVrJ1s4sJPbhQQD                                                                                          │
│  └──                                                                                                                                             │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0xc3992187cca82e10784a00623209b36ee5f3984ad05a09d71b6ee7bcc627af2f                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::token::TokenPolicyCap<0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76::gem::GEM>                          │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: 967SixEDHY4Lb5JocaVTZkcbq5PuoW8Lv89e2PAiDheQ                                                                                          │
│  └──                                                                                                                                             │
│ Mutated Objects:                                                                                                                                 │
│  ┌──                                                                                                                                             │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                                                                  │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                                                                    │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )                                                 │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                                                                    │
│  │ Version: 1264288                                                                                                                              │
│  │ Digest: EzrLSeQTCBzgX8q4cbsZJFQrTEycDwRmXUuH5xuTD28A                                                                                          │
│  └──                                                                                                                                             │
│ Published Objects:                                                                                                                               │
│  ┌──                                                                                                                                             │
│  │ PackageID: 0x3ac7c597a3d804fc5e0fd68cf231154a00c1d1f451b907b7bc5f5ff22a7bcf76                                                                 │
│  │ Version: 1                                                                                                                                    │
│  │ Digest: G3hfAFjMoYz7oG8miA9tDJ5ikGKx5oPMhTedZYv5oGAJ                                                                                          │
│  │ Modules: allowlist, coffee, denylist_rule, gem, limiter_rule, loyalty, regulated_token, simple_token, sword, token                            │
│  └──                                                                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -133151080                                                                             │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯


```