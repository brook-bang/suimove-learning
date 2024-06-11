```shell
PS F:\sui_project\602\suimove-learning\satoshi_flip> sui client publish --gas-budget 3000000000 --skip-dependency-verification
[warn] Client/Server api version mismatch, client api version : 1.26.2, server api version : 1.27.0
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING satoshi_flip
warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\counter_nft.move:4:14
  │
4 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\counter_nft.move:5:14
  │
5 │     use sui::transfer;
  │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\counter_nft.move:6:14
  │
6 │     use sui::tx_context;
  │              ^^^^^^^^^^ Unnecessary alias 'tx_context' for module 'sui::tx_context'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\single_player_satoshi.move:11:14
   │
11 │     use sui::object;
   │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\single_player_satoshi.move:13:14
   │
13 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\single_player_satoshi.move:14:24
   │
14 │     use sui::transfer::transfer;
   │                        ^^^^^^^^ Unused 'use' of alias 'transfer'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\single_player_satoshi.move:15:23
   │
15 │     use satoshi_flip::house_data;
   │                       ^^^^^^^^^^ Unused 'use' of alias 'house_data'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\single_player_satoshi.move:17:47
   │
17 │     use satoshi_flip::house_data::{HouseData, house};
   │                                               ^^^^^ Unused 'use' of alias 'house'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09008]: unused function
    ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\single_player_satoshi.move:165:9
    │
165 │     fun interal_start_game(
    │         ^^^^^^^^^^^^^^^^^^ The non-'public', non-'entry' function 'interal_start_game' is never called. Consider removing it.
    │
    = This warning can be suppressed with '#[allow(unused_function)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
  ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\house_data.move:8:14
  │
8 │     use sui::object;
  │              ^^^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
  │
  = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\house_data.move:11:14
   │
11 │     use sui::transfer;
   │              ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
   ┌─ \\?\F:\sui_project\602\suimove-learning\satoshi_flip\sources\house_data.move:79:13
   │
79 │         let coin = fees(house_data);
   │             ^^^^ Unused local variable 'coin'. Consider removing or prefixing with an underscore: '_coin'
   │
   = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Skipping dependency verification
Transaction Digest: 4DKpzNhqWy3HwSYopEoUPCnv3paFbwqaFW3xjfStpDj2
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
│  │ Version: 1264276                                                                                          │
│  │ Digest: 2RAGFQtoF1mcac7uua5NChZg9DFeuchSCFj7aMaTLbV5                                                      │
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
│    I5FYBhSkCOuTo/+pBTHkoF75y/lNe12WVzDdaHkbYyhG9b7BqJcA8HQbreIGtS9/gIJzEg76a20DhtvSf85RCQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 4DKpzNhqWy3HwSYopEoUPCnv3paFbwqaFW3xjfStpDj2                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 397                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x0bcd8d602eac2a4ff74102734d152fa1735d8f631f488b76bbf64859a6884818                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: BN9YhrBVALMAK8AWGJkGGAZHB5HgQi5FLpVg5HhgeCMk                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x26f4021de614780f328e4b85b4f14f439b8d595d91bf04a3cfffe0e950021661                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264277                                                                               │
│  │ Digest: 14NCQMxHpYFP8KmJqyAsxYyWboLKZ7qBFWEMzHf1iatT                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x7419691e5be308f20630badc5c456bb05f6c29059348170dd9b03162d0bf072c                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264277                                                                               │
│  │ Digest: 5755VvFKmeJ8DwRfb7r2GJhoDG7EyytZzvDsykgFQ1x6                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xc618fb3fbce9c9f85559f46b420d408c3a7912b167e566cc1b631b9cdc82e10a                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264277                                                                               │
│  │ Digest: Ctg5UNugcdG7C47XDoG5h8Y7bRsougyC7KBASvghg8oZ                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264277                                                                               │
│  │ Digest: BgSGjSqk6TmBvCY96NXLPEsWs98neiFFnVutZgdM5oqF                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ Version: 1264277                                                                               │
│  │ Digest: BgSGjSqk6TmBvCY96NXLPEsWs98neiFFnVutZgdM5oqF                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 44444800 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    6c3hAbXwoKqSv8Grf4wv7VAJYpT7UnPxV3zqeRjmN1JY                                                   │
│    6chwNKCjLrrhXgRt3dnvaEo7u8eVHCwdmj9JiHNwqXqr                                                   │
│    9au69QfQwHHNVKsoW4QinXXmXxzSZMzJHepyoJPdsr9o                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭─────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                          │
├─────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                        │
│  ┌──                                                                                                    │
│  │ ObjectID: 0x26f4021de614780f328e4b85b4f14f439b8d595d91bf04a3cfffe0e950021661                         │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                           │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )        │
│  │ ObjectType: 0x2::package::Publisher                                                                  │
│  │ Version: 1264277                                                                                     │
│  │ Digest: 14NCQMxHpYFP8KmJqyAsxYyWboLKZ7qBFWEMzHf1iatT                                                 │
│  └──                                                                                                    │
│  ┌──                                                                                                    │
│  │ ObjectID: 0x7419691e5be308f20630badc5c456bb05f6c29059348170dd9b03162d0bf072c                         │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                           │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )        │
│  │ ObjectType: 0xbcd8d602eac2a4ff74102734d152fa1735d8f631f488b76bbf64859a6884818::house_data::HouseCap  │
│  │ Version: 1264277                                                                                     │
│  │ Digest: 5755VvFKmeJ8DwRfb7r2GJhoDG7EyytZzvDsykgFQ1x6                                                 │
│  └──                                                                                                    │
│  ┌──                                                                                                    │
│  │ ObjectID: 0xc618fb3fbce9c9f85559f46b420d408c3a7912b167e566cc1b631b9cdc82e10a                         │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                           │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )        │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                 │
│  │ Version: 1264277                                                                                     │
│  │ Digest: Ctg5UNugcdG7C47XDoG5h8Y7bRsougyC7KBASvghg8oZ                                                 │
│  └──                                                                                                    │
│ Mutated Objects:                                                                                        │
│  ┌──                                                                                                    │
│  │ ObjectID: 0x056f6e3e32d759b04f40c4ae7148b5da0e25a09c69493653e6d975d576986869                         │
│  │ Sender: 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669                           │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )        │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                           │
│  │ Version: 1264277                                                                                     │
│  │ Digest: BgSGjSqk6TmBvCY96NXLPEsWs98neiFFnVutZgdM5oqF                                                 │
│  └──                                                                                                    │
│ Published Objects:                                                                                      │
│  ┌──                                                                                                    │
│  │ PackageID: 0x0bcd8d602eac2a4ff74102734d152fa1735d8f631f488b76bbf64859a6884818                        │
│  │ Version: 1                                                                                           │
│  │ Digest: BN9YhrBVALMAK8AWGJkGGAZHB5HgQi5FLpVg5HhgeCMk                                                 │
│  │ Modules: counter_nft, house_data, single_player_satoshi                                              │
│  └──                                                                                                    │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0xb4d1dd4e03b26aac6eb686fba08a2a860466f65d97d111e403ea5eb32e90a669 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -44466680                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯

```