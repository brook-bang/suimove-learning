# suimove-learning
## [Counter](Counter)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/e2e-counter)，分布式计数器应用程序，涵盖将 Move 代码连接到客户端应用程序的完整端到端流程。该应用程序允许您创建任何人都可以增加的计数器，但只有所有者可以重置。  

代码效果  
![alt text](Counter/image.png)

## [Plinko](plinko)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/plinko)，Plinko游戏,玩家将 Plinko 球扔到一个钉板上，它们随机落入代表不同乘数的槽中,以获得不同数量的sui。

## [Blackjack](blackjack)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/blackjack),赌场游戏21点，[游戏规则](https://baike.baidu.com/item/21%E7%82%B9/5481683),这是个单人版的二十一点，玩家与庄家竞争，由系统自动进行。庄家配备了一个公共 BLS 密钥，该密钥在游戏机制中起着核心作用。经销商的操作由对无服务器函数的 HTTP 请求触发。玩家通过在屏幕上与鼠标互动来为游戏生成随机性，然后下注开始游戏。在开始游戏时，向后端（庄家）发出请求，后端（庄家）通过签名并随后向玩家发两张牌和向自己发一张牌来处理它。玩家可以选择 “击中 ”或 “站立”。选择“站立”会触发庄家抽牌，直到总数达到 17 或更高。庄家停止后，智能合约介入比较总数并宣布获胜者。

## [Satoshi_flip](satoshi_flip)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/coin-flip),Satoshi Coin Flip 是一个 dApp，它利用可验证随机函数（VRF）在 Sui 区块链上创建公平的硬币游戏。用户（人类）与庄家（模块）进行游戏，并对正面或反面下注。然后，用户要么收到双倍的赌注，要么什么也得不到，具体取决于游戏的结果

## [oracle](oracle)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/weather-oracle),这是一个天气预报的智能合约，该合约包括添加城市天气，移除城市，更改城市天气情况，将城市天气数据做成NFT的功能

## [reviews_rating](reviews_rating)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/reviews-rating),这是一个评论平台，与传统的评论评级平台不一样的是，传统的评论评级平台通常不会公开用于评级评论的算法，而本示例则不同，它使用的算法会在链上公布，供所有人查看和验证。在穗上计算的气体成本很低，因此在链上提交、评分和订购所有评论在经济上是可行的。

## [escrow](escrow)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/trustless-swap),无需信任的原子交易平台，该代码提供了一种强大而安全的方式，可以在去中心化系统中执行对象的原子交换，而无需受信任的第三方。它使用共享对象和一系列检查来确保仅在满足所有条件时才会发生交换。

## [trusted_swap](trusted_swap)
这是[sui官方github库中的一个例子](https://github.com/MystenLabs/sui/blob/main/examples/move/trusted_swap/sources/example.move),通过第三方执行两个对象交换的一个简单的例子。

## [transfer-to-object](transfer-to-object)
这是[sui官方github库中的一个例子](https://github.com/MystenLabs/sui/tree/main/examples/move/transfer-to-object),示例为实现收银机的各种方法，common为通用付款方法，为其他付款方法所调用。owned_no_tto是转移到账户地址付款实现收银。shared_no_tto创建共享对象“收银机”，通过共享对象收银。shared_with_tto结合以上二例转移到共享对象进行收银。

## [token](token)
这是[sui官方github库中的一个例子](https://github.com/MystenLabs/sui/tree/main/examples/move/token),该实例为各种代币的例子：[咖啡代币买四送一](token\sources\coffee.move)，[宝石代币购买宝剑](token\sources\gems.move),[忠诚代币购买礼物](token\sources\loyalty.move),[受监管代币](token\sources\regulated_token.move),[普通代币](token\sources\simple_token.move)

## [random](random)
这是[sui官方github库中的一个例子](https://github.com/MystenLabs/sui/tree/main/examples/move/random),该实例为运用random随机数的三个例子，[抽奖](random\raffles)。[随机nft](random\random_nft):领取一个空投NFT，可以随机转换为不同的金属NFT。[老虎机](random\slot_machine)，随机数赌局游戏，有49%概率赢sui，51%的概率输sui

## [object_bound](object_bound)
这是[sui官方github库中的一个例子](https://github.com/MystenLabs/sui/tree/main/examples/move/object_bound),对象绑定，将对象存储在另一个对象上，当需要使用该对象时，要从借用该对象使用。

## [testnet_nft](testnet_nft)
这是[sui官方github库中的一个例子](https://github.com/MystenLabs/sui/tree/main/examples/move/nft),一个简单的nft，只有名字、描述、url。可转让，可更改描述，可删除的合约。
