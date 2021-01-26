# Table of Contents

+ [Asset Pricing](#asset-pricing)

+ [Factor Models](#factor-models)

+ [Portfolio Optimisation](#portfolio-optimisation)

+ [Derivatives Pricing](#derivatives-pricing)

+ [Risk Management](#risk-management)

+ [Neural Differential Equations](#neural-differential-equations)

+ [Autoencoders](#autoencoders)

+ [Market Microstructure](#market-microstructure)

+ [Time Series Forecasting](#time-series-forecasting)

+ [Volatility](#volatility)




# Asset Pricing

**Emprical properties of asset returns: stylised facts and statistical issues Rama Cont**

https://sci-hub.tw/https://doi.org/10.1080/713665670

+ Absence of autocorrelations
+ Heavy tails
+ Gain/Loss asymmetry - large drawdowns but not equally larget upward movements
+ Aggregational Gaussianity
+ intermeittency
+ Volatility Clustering
+ Conditional heavy tails
+ slow decay of absolute returns - long range dependence
+ Leverage effect - measures of vol negatively correlated with asset returns
+ Volume/vol correlation
+ Asymmetry in time scales

# Factor Models

**Deep Dynamic Factor Models**
https://arxiv.org/pdf/2007.11887.pdf

# Portfolio Optimisation

**Machine Learning in Portfolio Construction**


https://www.cfainstitute.org/en/research/multimedia/2020/machine-learning-in-portfolio-construction

+ denoise covariance matrices using shrinkage; marchenko pastur

+ Signal-induced instability; 

+ Hierarchial risk parity -

+ Nested Cluster Optimisation - Cluster correlation matrix - intracluster weights, system reduction, inter-cluster weights, dot product - reduce N x N matrix to  k x k correlation matrix of clusters

# Derivatives Pricing

##  Neural networks for option pricing and hedging: a literature review
https://arxiv.org/pdf/1911.05620.pdf

Features
+ Stock Price, Option Strike sometimes used seperately, sometimes ratio ("moneyness")
	+ Moneyness is stationary, combining may reduce overfitting 	
+ Historical Volatility, VIX, implied volatility, GARCH forecasts of volatility


## Deep Hedging: Learning to Simulate Equity Options Markets


## Deep Hedging
https://arxiv.org/pdf/1802.03042.pdf


## Deeply Learning Derivatives
https://arxiv.org/abs/1809.02233
https://mp.weixin.qq.com/s/4n3kxM3YjQQgb76vraXY1w


# Risk Management


# Financial Graph Learning

https://arxiv.org/pdf/2012.15410v1.pdf

# Neural Differential Equations

https://arxiv.org/abs/2012.07244

**ROBUST PRICING AND HEDGING VIA NEURAL SDES**

https://arxiv.org/pdf/2007.04154.pdf

# Reinforcement Learning

https://quantdare.com/reinforcement-learning-for-trading/

**https://arxiv.org/pdf/1901.08740.pdf**

https://arxiv.org/pdf/1901.08740.pdf


**Deep Reinforcement Learning for Active High Frequency Trading**
https://arxiv.org/abs/2101.07107

**A Deep Reinforcement Learning Framework for the Portfolio Management Problem**
https://arxiv.org/abs/1706.10059

**Using Reinforcement Learning in the Algorithmic Trading Problem**
https://arxiv.org/abs/2002.11523


# Autoencoders

**QuantNet: Transferring Learning AcrossSystematic Trading Strategies**

https://arxiv.org/pdf/2004.03445.pdf

+ Applies Transfer Learning across markets using encoder-decoder architecture
+ Uses sharpe ratio as a loss

**Adversarial Latent Autoencoder**

https://github.com/podgorskiy/ALAE

+ "We show that StyleALAE can not only generate 1024x1024 face images with comparable quality of StyleGAN, but at the same resolution can also produce face reconstructions and manipulations based on real images"

**Detecting Changes in Asset Co-Movement Using the Autoencoder Reconstruction Ratio
23 Jan 2020**

https://arxiv.org/pdf/2002.02008.pdf

+ Use Autoencoder reconstruction as an alternative to PCA

** Detecting Changes in Asset Co-MovementUsing the Autoencoder Reconstruction Ratio**

https://arxiv.org/pdf/2002.02008.pdf

**Nowcasting Networks**
+ https://www.lpsm.paris/pageperso/crepey/papers/nowcasting-networks.pdf

+ https://github.com/mChataign/smileCompletion/blob/master/TensorflowNowcasting.ipynb


# GANs


**Quant GANs:Deep Generation of Financial Time Series Magnus Wiese1, 2,∗Robert Knobloch2Ralf Korn1, 2Peter Kretschmer1**

https://arxiv.org/pdf/1907.06673.pdf

+ Temporal convolutional Neural Networks as architecture



**Can we predict a market regime from correlation matrix features?**
https://marti.ai/qfin/2020/09/04/correlation-matrix-features-market-regimes.html

**Improving the Robustness of Trading Strategy Backtesting with Boltzmann Machines and Generative Adversarial Networks**
https://arxiv.org/pdf/2007.04838.pdf

**A Data-driven Market Simulator for Small Data Environments**
https://arxiv.org/abs/2006.14498


# Time Series Forecasting

**Time Series Forecasting With Deep Learning: A Survey**

https://arxiv.org/abs/2004.13408

+ Deep Neural Networks as an encoder-decoder architecture for time series prediction
+ Convolutional Neural Networks akin to AutoRegressive Model; careful selection of the window k needed,  ability to learn long term dependencies limited; Dilated convolutions alleviate this : "Dilated convolutions can hencebe interpreted as convolutions of a down-sampled version of the lower layer features – reducingresolution to incorporate information from the distant past. As such, by increasing the dilation ratewith each layer, dilated convolutions can gradually aggregate information at different time blocks,allowing for more history to be used in an efficient manner". Finally, CNNs are similar to Finite Impulse Response Filters in digital ssignal processing.
+ Recurrent Neural Networks - contains a hidden internal state which is updated and can learn long term dependencies, but suffer from vanishing/exploding gradients. Long Short Term Memory alleviates this by having a cell state to store long-term information modulated by forget gates. Finaally, RNNs are similar to Bayesian filtering.
+ Attention: allow the network to focus on significant time steps in the past through dynamically generated weights; Transformer architecture; 
+ Point estimates; Probabilistic outputs
+ Multi Horizon Forecasting: Iterative approach - use Monte Carlo estimates; Directly use Seq2Seq
+ M4 competition: pure machine learning models did not perform extremely well - stationarity and input preprocessing; Hybrid Models such as Exponentially Smoothed RNN & Deep State Space Models
+ Interpretability: Post-hoc - LIME, Shapley values; Inherent - Attention weights
+ Causal/Counterfactual;
+ Frontier - continuous time -neural ODES, irregular intervals, hierarchial models using Deep Learning

**Industrial Forecasting with Exponentially Smoothed Recurrent Neural Networks**

https://arxiv.org/pdf/2004.04717.pdf

**N-BEATS: Neural basis expansion analysis for interpretable time series forecasting**

https://arxiv.org/abs/1905.10437

https://eng.uber.com/m4-forecasting-competition/

**Enhancing Time Series Momentum Strategies Using Deep Neural Networks, Bryan Lim, Stefan Zohren, Stephen Roberts**

https://arxiv.org/abs/1904.04912

+ Train Deep Neural Network by optimising sharpe


# Market Microstructure

**Short is Long (squeezemetrics)**

https://squeezemetrics.com/monitor/download/pdf/short_is_long.pdf

+ Market Maker facilitates trades by shorting their ask leg
+ "short volume is actually representative of investor buying volume, and non-short volume is representative of investor selling volume. It's no coincidence that short volume is predictably half of total volume―short sales represent the buying half of the market, and long (non-short) sales represent the selling half." - SEC :  short sales 49% of equity share volume
+ Island ECN (NASDAQ off-exchange venue) - rebates to Market Makers for providing liquidity (through bid-ask spreads). This attracted more competition, tighter spreads, Island ECN 3% - 13% market share of NASDAQ. -> Tiny margins; Market Makers making money through rebates, leading to HFTs
+ i.e. all trades go through Market Makers / HFTs
+ FINRA short sale volume from Trade Reporting Facilities. Dark Pools - no pre-trade data (order book) - can buy and sell between bid/ask prices - reducing trade costs which drives spreads even tighter; have Market Makers as well
+  "off-exchange volume accounts for about a third ofall trade volume"


**Model Uncertainty in Commodity Markets**
https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2606679

+ Models for prices of commodities attempt to capture three stylized features: seasonal trend, moderate deviations (a diffusive factor), and large deviations (a jump factor) both of which mean-revert to the seasonal trend.

**Learning low-frequency temporal patterns forquantitative trading**

https://arxiv.org/pdf/2008.09481.pdf

Autoencoder on daily, weekly, monthly features, weight initialisations based on restricted boltzmann machine


# Limit Order Book

**DEEP LEARNING  MODELLING OF THE LIMIT ORDER BOOK:A COMPARATIVE PERSPECTIVE**
https://arxiv.org/pdf/2007.07319.pdf

**Deep Learning Digital Asset Books**
https://arxiv.org/pdf/2010.01241.pdf

**A stochastic PDE model for limit order book dynamics**
https://arxiv.org/abs/1904.03058


# Quant Culture

+ The Man Who solved the market

+ Emmanuel Derman - my life as a Quant

+ Scott Patterson  



# Algorithmic Trading

**Deep optimal stopping**
	
https://arxiv.org/pdf/1804.05394.pdf	

## Tactical Investment Algorithms	

Marcos López de Prado


September 30, 2019
https://poseidon01.ssrn.com/delivery.php?ID=883022123123085090026094013002100126050076068001039051073091012098009018097116081095110048059008102059004068089111074119110007012020000002083004090070067084122064081036047002120072119076120028127013125114014114015118119113092120108080105001081117120&EXT=pdf

Walk Forward backtests assume that theres is only one path; Resampling assumes history will repeat itself.


Monte Carlo backtests

# Machine Learning


## Feature Selection


**The best way to select features?Comparing MDA, LIME and SHAP - Ernest P. Chan, Xin Man**

https://arxiv.org/ftp/arxiv/papers/2005/2005.12483.pdf

Variability of feature importance reduces through number of iterations but does not go to 0. LIME and SHAP more stable than MDA (Mean Decrease in Accuracy). LIME most human interpretable. All improve out-of-sample predictive metrics. Experiments were conducted on synthetic datasets, two public  benchmark  datasets,  and  on  proprietary  data  from  an  active investment strategy.
 
Mean Decrease Accuracy of a random forest: when the values of a  feature  are  permuted  in  the  out-of-bag  samples.  

Different seeds result in different feature importances;

Instability Index: n x m matrix of  feature importances; m -features, n iterations

Define the average rank , of a feature r_{j}, and feature importance as \( \frac{1 / r_{j}}{\sum 1 /r_{i}} \)

Instability as the variance of ranks \(Var_{j} = Var(r_{1j}...r_{nj}) \)

Instability index as the average of top k features instability scoes

https://www.predictnow.ai/blog/the-amazing-efficacy-of-cluster-based-feature-selection/


# Volatility

**Using tensorflow for dupire local volatility model**

https://arxiv.org/pdf/2002.02481.pdf

**Deep Learning VolatilityA deep neural network perspective on pricing and calibration in(rough) volatility models**

https://arxiv.org/pdf/1901.09647.pdf

# Correlation Matrices

**Classification of Correlation Matrices using SPDNet with Riemannian Batch Normalization**

https://marti.ai/ml/2021/01/22/spdtorchnet.html

# Time Series

https://link.springer.com/article/10.1007/s10618-019-00619-1

https://papers.nips.cc/paper/2018/file/5cf68969fb67aa6082363a6d4e6468e2-Paper.pdf


# Mathematical Finance

**SIMPLIFIED  STOCHASTIC  CALCULUS  WITH  APPLICATIONS  INECONOMICS  AND  FINANCE**

https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3500384

# Pairs Trading

https://docs.google.com/presentation/d/1oFpv7OUi3W9F2D30rEQRy_Ra5ejLtlCMnk9nTJnMDr4/edit#slide=id.gb70b23aaa3_1_0


https://drive.google.com/file/d/1ZeJD81OrKln8QDxm1sU63ivRgqXCcQbS/view

https://docs.google.com/presentation/d/19xUNdddCsdXg2KizcUMVvdjhTnA8Cuq293brXB8rSWM/edit#slide=id.p

https://docs.google.com/presentation/d/1Cb9NizOkvCx6-p6X3AVZyxjviub7kF2sCPy2gBiT9nk/edit#slide=id.p


# Trend / Momentum

**Trend Filtering Methodsfor Momentum Strategies**

http://www.thierry-roncalli.com/download/lwp-tf.pdf

**Design and analysis of momentum trading strategies**

https://arxiv.org/abs/2101.01006

# Python for Finance

Yves Hilpisch 

Python for Finance

Artificial Intelligence for Finance, Python for Algorithmic Trading

Not that useful personally, for both financial theory and machine learning theory it would be better to read a textbook specifically on that subject



# Websites

https://qoppac.blogspot.com/

https://pythonforfinance.net/
