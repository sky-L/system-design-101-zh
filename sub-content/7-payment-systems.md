
## 支付系统

### 如何学习支付系统

<p>
  <img src="images/learn-payments.jpg" />
</p>

###  为什么信用卡被称为'银行最赚钱的产品'? VISA/Mastercard是如何赚钱的?

下面的图表显示了信用卡支付流程的经济学。

<p>
  <img src="images/how does visa makes money.jpg" style="width: 640px" />
</p>

1. 持卡人支付100美元给商家购买商品。
2. 商家通过使用信用卡获得更高的销售额，并需要向发卡行和卡网络提供支付服务进行补偿。收单行与商家签订一个名为“商家贴现费”的收费协议。

3-4. 收单行保留0.25美元作为收单成本费，1.75美元作为交换费支付给发卡行。商家贴现费应该覆盖交换费。

由于每个发卡行与每个商家协商费用效率低下，因此卡网络设置了交换费。

1. 卡网络与每家银行设置网络评估和费用，每月银行向卡网络支付其服务费。例如，VISA每次刷卡收取0.11%的评估费和0.0195美元的使用费。
2. 持卡人向发卡行支付其服务费用。

为什么发卡行需要获得补偿？

- 即使持卡人未向发卡行支付费用，发卡行仍需向商家支付费用。
- 持卡人向发卡行支付费用之前，发卡行已向商家支付费用。
- 发卡行还有其他运营成本，包括管理客户账户、提供对账单、欺诈检测、风险管理、清算和结算等。


### 当我们在商家店里刷信用卡时,VISA是如何工作的？

<p>
  <img src="images/visa_payment.jpeg" />
</p>


VISA、Mastercard和美国运通是信用卡结算和清算的卡网络。收单行和发卡行可以是不同的银行。如果银行之间逐笔结算而没有中介，每家银行都必须与其他所有银行结算交易，这是非常低效的。

下图显示了VISA在信用卡支付流程中的角色。有两个涉及的流程：授权流程发生在客户刷卡时，捕获和结算流程发生在商家想要在一天结束时收到钱时。

- 授权流程

步骤0：发卡行向其客户发放信用卡。

步骤1：持卡人想要购买商品，在商家店内的POS终端刷信用卡。

步骤2：POS终端将交易发送至提供POS终端的收单行。

步骤3和4：收单行将交易发送至卡网络，也称为卡方案。卡网络将交易发送至发卡行进行批准。

步骤4.1、4.2和4.3：如果交易被批准，发卡行会冻结资金。批准或拒绝的结果将返回给收单行和POS终端。

- 捕获和结算流程

步骤1和2：商家想要在一天结束时收到钱，因此他们在POS终端上点击“捕获”。交易以批处理方式发送到收单行。收单行将带有交易的批处理文件发送到卡网络。

步骤3：卡网络对来自不同收单行的交易进行清算，并将清算文件发送给不同的发卡行。

步骤4：发卡行确认清算文件的正确性，并向相关的收单行转移资金。

步骤5：收单行然后将资金转移至商家的银行。

步骤4：卡网络清理来自不同收单行的交易。清算是一种互相抵消交易的净额过程，因此总交易次数减少。

在此过程中，卡网络承担与每家银行交流的负担，并获得服务费。

### 世界范围内的支付系统系列 第1部分:印度的统一支付接口 UPI


什么是UPI？UPI是由印度国家支付公司开发的即时实时支付系统。

它占印度数字零售交易的60%。

UPI = 支付标记语言 + 可互操作支付标准。


<p>
  <img src="images/how-does-upi-work.png"  style="width: 600px" />
</p>