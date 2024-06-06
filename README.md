# suimove-learning
## [Counter](Counter)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/e2e-counter)，分布式计数器应用程序，涵盖将 Move 代码连接到客户端应用程序的完整端到端流程。该应用程序允许您创建任何人都可以增加的计数器，但只有所有者可以重置。  

代码效果  
![alt text](Counter/image.png)

## [Plinko](plinko)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/plinko)，Plinko游戏,玩家将 Plinko 球扔到一个钉板上，它们随机落入代表不同乘数的槽中,以获得不同数量的sui。这里只分享合约部分。

## [Blackjack](blackjack)
这是[sui官方示例的一个例子](https://docs.sui.io/guides/developer/app-examples/blackjack),赌场游戏21点，[游戏规则](https://baike.baidu.com/item/21%E7%82%B9/5481683),这是个单人版的二十一点，玩家与庄家竞争，由系统自动进行。庄家配备了一个公共 BLS 密钥，该密钥在游戏机制中起着核心作用。经销商的操作由对无服务器函数的 HTTP 请求触发。玩家通过在屏幕上与鼠标互动来为游戏生成随机性，然后下注开始游戏。在开始游戏时，向后端（庄家）发出请求，后端（庄家）通过签名并随后向玩家发两张牌和向自己发一张牌来处理它。玩家可以选择 “击中 ”或 “站立”。选择“站立”会触发庄家抽牌，直到总数达到 17 或更高。庄家停止后，智能合约介入比较总数并宣布获胜者。
这里只分享合约部分。