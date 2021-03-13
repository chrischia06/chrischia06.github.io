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
+ Risk.net podcast: https://soundcloud.com/user-393208363/hans-buehler-280519

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



# Deep Hedging Saga

+ Statistical Hedging https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2913250

+ Deep Hedging: Hedging Derivatives Under Generic Market Frictions Using Reinforcement Learning https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3355706



**Deep Hedging:Learning to Simulate Equity Option Markets **
+ https://arxiv.org/pdf/1911.01700.pdf
+ "Derivative pricing models require path generators, but these are not designed to be realistic"
+ Market consists of options with Equispaced strikes $\kappa = \{K_{1}, K_{1} + \Delta K, \ldots , K_{1} + (N_{K} - 1) \Delta K \}, maturities $\mathcal{M} = \{M_{1}, \ldots M_{N_{M}} \}. Time set $\mathbb{N} \cup \{ 0 \}$, filtered probability space $(\Omega, \mathcal{F}, \mathbb{F},\mathbb{P})$ and $\mathbb{R}^{n}$ valued measurable functions that are
+ Express Prices in terms of their Discrete Local Volatilities (DLV). $\sigma_{t}(K, M)$, which is a $N_{K} \cdot N_{M}$ process on $t \in \mathbb{N}$. Assume the process has the form $\sigma_{t + 1} = g(Z_{t + 1}, S_{t})$, a function of state $S_{t}$ and noise $Z_{t + 1} $
+ Compares PCA with a GAN approach. GAN is trained by optimising the metric proposed by Goodfellow. Generated data is benchmarked by minimising the distance between the emprical pdf of the historical / true data $f_{h}$, and empirical pdf of the generated data : $\sum_{i = 1}^{N_{B}} \| f_{h}(B_{i}) - f_{g}(B_{i})\| $. Likewise, the L2 distance of skew, kurtosis, and acf between empirical and generated is compared.

+ **A  DATA-DRIVEN  MARKET  SIMULATORFOR  SMALL  DATA  ENVIRONMENTS (2020)** 
+ https://arxiv.org/pdf/2006.14498.pdf

**Generating Financial Markets With Signatures (2020)**

+ Paper: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3657366	
+ Code: https://github.com/imanolperez/market_simulator
+ Market Generator Model / Generative Models - Generative Neural Network , e.g. VAE, GAN, RMB. The objective function is to minimise the L^{2} error of the truncated log-signature of the time series
+ Generate data that captures the *stylised facts*: Non-stationarity, vol clustering, leverage effect, autocorrelation in absolute returns, heavy tails

**Imanol Perez Arribas, Signatures in machine learning and finance, PHd Thesis**

## SDE approach

**Robust Pricing and Hedging via Neural SDEs**

+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3646241
+ Code: https://github.com/msabvid/robust_nsde



+ Multivariate approximation using radial basis functions vs using artificial neural networks with specific attention to derivatives pricing https://www.academia.edu/44414654/Multivariate_approximation_using_radial_basis_functions_vs_using_artificial_neural_networks_with_specific_attention_to_derivatives_pricing

+ **KrigHedge: Gaussian Process Surrogates for Delta Hedging** 
https://arxiv.org/abs/2010.08407


## Differential Machine Learning (2020)
+ Essentially add differentials as training data. In the context of option pricing, this allows the Neural network to learn the Greeks as well as the price.

+ Bloch https://papers.ssrn.com/sol3/cf_dev/AbsByAuth.cfm?per_id=802495
+ Horvath https://sites.google.com/site/blankanorahorvath/home?authuser=0
+ Teichmann https://people.math.ethz.ch/~jteichma/

