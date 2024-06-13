```
PS F:\sui_project\602\suimove-learning\oracle> sui client publish --gas-budget 300000000 --skip-fetch-latest-git-deps --skip-dependency-verification
[warn] Client/Server api version mismatch, client api version : 1.26.2, server api version : 1.27.0
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING oracle
Skipping dependency verification
Transaction Digest: 4B9uq6dPyqT2L4nGsgVfhycpFxb1G1YfVENocFND5Cnb
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
│  │ Version: 1264277                                                                                          │
│  │ Digest: BgSGjSqk6TmBvCY96NXLPEsWs98neiFFnVutZgdM5oqF                                                      │
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
│    fGQm8WqFt1OYKt+dLV4fEJtoo7NGD9gL2AkjbhL6oB5bVnCMGDrq6gwSNEhcfC4c08qYK4SqnbVdSzCUQyOEAQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 4B9uq6dPyqT2L4nGsgVfhycpFxb1G1YfVENocFND5Cnb                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 399                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x0ee8c671031fa409cc869d2ceedddf23b720a76656e70968426a06d004166663                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264278                                                                               │
│  │ Digest: Ee85Jw3VEpiJhM4MiFoZChf9xaAeVVpDJ84trWj7ECVn                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x861bac626f1cb9a14cef2d212518dfd7ead71c93dfd30c721b4d5de15c16a71f                         │
│  │ Owner: Shared( 1264278 )                                                                       │
│  │ Version: 1264278                                                                               │
│  │ Digest: 6zR8DqHFLEiM9cFivLWqiQMtwfLSbti5eKmcdtpuJ9He                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x884f49e4bad796d9d90b930b6bb0713444076188d26f4e6b1e0e4824abec5013                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264278                                                                               │
│  │ Digest: 3qLUa6evXXN7cJ6M1u3dCH11yKSzTmMSnXFxsf2JCozi                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xc858c5e1a29e8be374b8e8a9851bef6ca38ed04b31527086c090d72700b0560d                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: 8bZDen23cXquPXvugE2kYR33SPhszVqisr28hKzXnDr6                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xf44f4086b0d90a7ba7da3c1193d9525f9d1413121fd123cf273f5a0049746422                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264278                                                                               │
│  │ Digest: EYF8wJZSRWATg2s8333YthE1oRLo7N4NfPjSeV4D2o1p                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264278                                                                               │
│  │ Digest: DFupigpViAwjaMjviw7bT1xuxJF1yvWXw3kkJWxfXUZm                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264278                                                                               │
│  │ Digest: DFupigpViAwjaMjviw7bT1xuxJF1yvWXw3kkJWxfXUZm                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 29305600 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    3Hry5CyWQUTNV5nRZTNxoWyfN9zxBEcwsYkXUyTHCrmE                                                   │
│    4DKpzNhqWy3HwSYopEoUPCnv3paFbwqaFW3xjfStpDj2                                                   │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                             │
├────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                           │
│  ┌──                                                                                                       │
│  │ ObjectID: 0x0ee8c671031fa409cc869d2ceedddf23b720a76656e70968426a06d004166663                            │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )           │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                    │
│  │ Version: 1264278                                                                                        │
│  │ Digest: Ee85Jw3VEpiJhM4MiFoZChf9xaAeVVpDJ84trWj7ECVn                                                    │
│  └──                                                                                                       │
│  ┌──                                                                                                       │
│  │ ObjectID: 0x861bac626f1cb9a14cef2d212518dfd7ead71c93dfd30c721b4d5de15c16a71f                            │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                              │
│  │ Owner: Shared( 1264278 )                                                                                │
│  │ ObjectType: 0xc858c5e1a29e8be374b8e8a9851bef6ca38ed04b31527086c090d72700b0560d::weather::WeatherOracle  │
│  │ Version: 1264278                                                                                        │
│  │ Digest: 6zR8DqHFLEiM9cFivLWqiQMtwfLSbti5eKmcdtpuJ9He                                                    │
│  └──                                                                                                       │
│  ┌──                                                                                                       │
│  │ ObjectID: 0x884f49e4bad796d9d90b930b6bb0713444076188d26f4e6b1e0e4824abec5013                            │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )           │
│  │ ObjectType: 0xc858c5e1a29e8be374b8e8a9851bef6ca38ed04b31527086c090d72700b0560d::weather::AdminCap       │
│  │ Version: 1264278                                                                                        │
│  │ Digest: 3qLUa6evXXN7cJ6M1u3dCH11yKSzTmMSnXFxsf2JCozi                                                    │
│  └──                                                                                                       │
│  ┌──                                                                                                       │
│  │ ObjectID: 0xf44f4086b0d90a7ba7da3c1193d9525f9d1413121fd123cf273f5a0049746422                            │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )           │
│  │ ObjectType: 0x2::package::Publisher                                                                     │
│  │ Version: 1264278                                                                                        │
│  │ Digest: EYF8wJZSRWATg2s8333YthE1oRLo7N4NfPjSeV4D2o1p                                                    │
│  └──                                                                                                       │
│ Mutated Objects:                                                                                           │
│  ┌──                                                                                                       │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                            │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )           │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                              │
│  │ Version: 1264278                                                                                        │
│  │ Digest: DFupigpViAwjaMjviw7bT1xuxJF1yvWXw3kkJWxfXUZm                                                    │
│  └──                                                                                                       │
│ Published Objects:                                                                                         │
│  ┌──                                                                                                       │
│  │ PackageID: 0xc858c5e1a29e8be374b8e8a9851bef6ca38ed04b31527086c090d72700b0560d                           │
│  │ Version: 1                                                                                              │
│  │ Digest: 8bZDen23cXquPXvugE2kYR33SPhszVqisr28hKzXnDr6                                                    │
│  │ Modules: weather                                                                                        │
│  └──                                                                                                       │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -29327480                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
```