# Neural Options

https://www.cass.city.ac.uk/__data/assets/pdf_file/0007/494080/DeepLearningExoticOptionPricingLSVOL_KB_CassBusinessSchool_2019.pdf


Black Scholes
+ **Hutchison, Lo & Poggio(1994) “A Nonparametric Approach to Pricing and Hedging Derivatives Securities**
+ Morelli et al (2004) "Pricing Financial Derivatives with Neural Networks”
+ Brostrom& Kristiansson(2018) “Exotic Derivatives and Deep Learning”
+ Ferguson & Green (2018) “Deep Learning Derivatives”

Stochastic Vol
+ McGhee (2018) “An Artificial Neural Network Representation of the SABRStochastic Volatility Model” (purports approach is 10000 faster)
+ Horvath, Muguruza & Tomas (2019)“Deep Learning Volatility”
+ Liu, Oosterlee& Bohte(2019)“Pricing Options and computing implied volatilities using neural networks”
+ Hernandez (2017) “Model calibration with neural networks”


## Valuing and Hedging American Put Options Using Neural Networks



## Buhler, H. , Teichmann, J. Deep Hedging (2018)
+ https://arxiv.org/pdf/1802.03042.pdf
+ Presentation: https://www.maths.ox.ac.uk/system/files/attachments/2019%2004%2024%20Deep%20Hedging%20Frontiers%20Imperial%202.1.pdf
+ Michal Kozyra, PHd Thesis, Natixis Prize (2019) (essentially based on Deep Hedging 2018): https://www.natixis.com/upload/docs/application/pdf/2019-10/michal_kozyra_prix_natixis_2019_du_meilleur_memoire_de_master_en_finance_quantitative.pdf
+ Peng (MSc Thesis) (2018) https://raw.githubusercontent.com/deep-hedger-Peng/Hedging-by-Deep-Learning/master/deep-hedging.pdf
+ Peixuan (MSc Thesis) (2020)

## Deep hedging: hedging derivatives under generic market frictions using reinforcement learning.

## Deep Hedging: Learning to Simulate Equity Options Markets

## Deeply Learning Derivatives
https://arxiv.org/abs/1809.02233
https://mp.weixin.qq.com/s/4n3kxM3YjQQgb76vraXY1w

## A Neural NetworkApproach to Understanding Implied Volatility Movements
+ http://www-2.rotman.utoronto.ca/~hull/downloadablepublications/VolSurfaces_NeuralNet.pdf

**An Artificial Neural Network Representation of the SABRStochastic Volatility Model**





## Wang, W.,  Statistical Hedging with Neural Networks (PHD Thesis), (2020) 
+ Looks at using ANNs in the 1 period case to learn hedging ratio, and RNNs in the multi-period case. Finds that Linear Regression with Delta, Vega (first order greeks) outperforms Neural Nets in this task.
+ Accompanying Code: [https://github.com/weiguanwang/Hedging_Neural_Networks](https://github.com/weiguanwang/Hedging_Neural_Networks)


##  Ruf, J, , Wang, W., Neural networks for option pricing and hedging: a literature review (2020)
+https://arxiv.org/pdf/1911.05620.pdf

Features
+ Stock Price, Option Strike sometimes used seperately, sometimes ratio ("moneyness")
	+ Moneyness is stationary, combining may reduce overfitting 	
+ Historical Volatility, VIX, implied volatility, GARCH forecasts of volatility
+ Time to maturity, put call flag.

Outputs:
+ Option Price, Implied Volatility, Hedging Ratio
+ Metrics: MAE, MSE, MAPE
+ Pricing: another method as opposed to Black Scholes with impl vol since that will give the perfect price. Hedging: vs Black Scholes delta.


## Halperin,I., Qlbs: Q-learner in the black-scholes (-merton) worlds, (2017)
https://arxiv.org/abs/1712.04609

## Kolm, P.N., Ritter, G. Dynamic replication and hedging: A reinforcement learning approach (2019).

S Palmer Evolutionary Algorithms and Computational Methods for Derivatives Pricing. 

## Carbonneau, A. Equal risk pricing of derivatives with deep hedging (2020)

+ Code: https://github.com/alexandrecarbonneau/Equal-risk-pricing-with-deep-hedging


## J. Cao, J. Chen, J. C. Hull, and Z. Poulos Deep hedging of derivatives using reinforcement learning (2019)

## Carbonneau, A. Deep Hedging of Long-Term Financial Derivatives (2020)
https://arxiv.org/pdf/2007.15128.pdf

+ Variable annuities/ equity linked insurance - "cashflows that depend on equity performance. These products often include financial guarantees to protect investorsagainst downside equity risk with benefits which can be expressed as the payoff of derivatives".  e.g. Guaranteed minimum maturity benefit is a lookback put


Becker, S., Cheridito, P., and Jentzen, A. (2019).  Deep optimal stopping

# SABR

## McGhee, W.A. An Artificial Neural Network Representation of the SABRStochastic Volatility Model


## Thorin, H. (MSc Mathematics and Finance Thesis) Artificial Neural Networksfor SABR modelcalibration & hedging


