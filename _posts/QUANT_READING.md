# Table of Contents

+ [Asset Pricing](#asset-pricing)	

+ [Portfolio Optimisation](#portfolio-optimisation)

+ [Derivatives Pricing](#derivatives-pricing)

+ [Risk Management](#risk-management)

+ [Neural Differential Equations](#neural-differential-equations)

+ [Autoencoders](#autoencoders)

+ [Market Microstructure](#market-microstructure)

+ [Time Series Forecasting](#time-series-forecasting)

+ [Volatility](#volatility)


# General Textbooks

+ Advances in Financial Machine Learning

**Machine Learning for Asset Managers**
+ Gautier Marti review: https://gmarti.gitlab.io/qfin/2020/04/12/commented-summary-machine-learning-for-asset-managers.html

**Big Data Science in Finance**

Chapter 2 - Neural Networks
General introduction to, but with a few interesting references of how NNs can be used in problems in Finance.

+ Aldridge and Avellaneda  (2019)
+ Chen, Pelger, Zhu (2019) - GANs for stochastic discount factor
+ Gu, Kelly, Xu (2019)
+ Key Benefits of NNs: NNs can acommodate all factors (no need for feature selection), nonlinear dependence. Prepayments on mortgage modelling. From Linear, to S-curve / sigmoid, to NN approach (Sirignano, Sadhwani, and Giesecke (2018))
+ Index Replication (Heaton, Polson, Witte 2016)

Chapter 3 - Supervised Learning
Discussion of Lasso, Ridge, KNN, Trees, SVMs
+ Carrasco, Noumon (2012) - Ridge does not work in portfolio optimisation as it leads to portfolios with a (undesirably) large number of positions (since it doesn't shrink coefficients to 0)

Chapter 4 - Semisupervised Learning
+ Generative, Discriminative, Graphical Models. Incorporating analyst estimates.

Chapter 5 - Unsupervised Learning
+ PCA, SVD. PCA application to factor models.

Chapter 6 - Factor Models
+ Fan, Liao, Mincheva (2013). POET
+ Kelly, Pruitt, Su (2017). Instrumented PCA, allow time varying factor loadings
+ Fan, Liao, Wang (2016) Projected PCA. PCA with other basis functions, splies, polynomial terms, wavelets
+ Avellanada and Lee (2010). PCA on Correlation Matrix instead of Covariance Matrix.
+ Avellanada (2019). Hierarchial PCA. Within Sectors, Between Sectors
+ PCA/SVD Advantages: 'Interpretability' of Factors/ Economic explanation in Equities and Fixed Income

Chapter 7 - Data as a Signal vs Noise
+ Noise in Covariance Matrices. Wigner Matrices. Marcenko-Pastur distribution. Karhunen Loeve Transform. Missing Data (Missing at random, missing at not random). Imputation. Tracy Widom distribution for Missing Eigenvalues

Chapter 8 - Unsupervised Learning
+ Options: Put-Call implied vol spread. Risk Neutral Skew. Vol of implied vol. Option to stock volume ratio
+ Christoffersen, Fournier, and Jacobs (2017). PCA on  Implied Vol; regressed Implied Vol against TTM (days), Moneyness.
+ Muravyev, Vasquez, and Wang (2018). optionable US Stocks for 1996-2014, demeaned correlations of vol surfaces using PCA.
+ Cont, Fonseca (2002). Variance of Correlation Matrix DAX options can be explained with 3 PCs.
+ Markov Chains. Perron-Frobenius Theorem.

Chapter 9 - Clustering
+ K Means, Spectral. Davis-Kahan theorem.

# Asset Pricing

**Rama Cont , Empirical properties of asset returns: stylised facts and statistical issues (2001)**

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

"Quantum Equilibrium-Disequilibrium": Asset Price Dynamics, Symmetry Breaking, and Defaults as Dissipative Instantons
+ https://arxiv.org/pdf/1808.03607.pdf

**Baitinger, E., Forecasting asset returns with network‐based metrics: A statistical and economic analysis (2021)**
+https://onlinelibrary.wiley.com/doi/10.1002/for.2772


# Portfolio Optimisation

**Machine Learning in Portfolio Construction**


https://www.cfainstitute.org/en/research/multimedia/2020/machine-learning-in-portfolio-construction

+ denoise covariance matrices using shrinkage; marchenko pastur

+ Signal-induced instability; 

+ Hierarchial risk parity -

+ Nested Cluster Optimisation - Cluster correlation matrix - intracluster weights, system reduction, inter-cluster weights, dot product - reduce N x N matrix to  k x k correlation matrix of clusters

**Deep Learning for Finance: Deep Portfolios**
https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2838013


# ETFs

**Sparse Index Tracking Using Sequential Monte Carlo (2021)**
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3799766
+ Motivation - replicate a ETF / index with a sparse amount of assets, since a "perfect" replication by matching the weights of the index requires transacting in hundreds of assets
+ Previous approaches, L1 / L2 penalised regression






# Risk Management


**Spectral backtests of forecast distributions with application to risk management (2019)**
https://arxiv.org/pdf/1708.01489.pdf

**Validating Market Risk Models UsingRealized PIT Values (PHd Thesis 2017)**
https://core.ac.uk/download/pdf/186333072.pdf

# Financial Graph Learning

**Algorithms for Learning Graphs in Financial Markets**
https://arxiv.org/pdf/2012.15410v1.pdf

**Learning Undirected Graphs in Financial Markets**
https://arxiv.org/abs/2005.09958
+ Alternating Direction Method of Multipliers

# Neural Differential Equations

https://arxiv.org/abs/2012.07244

**ROBUST PRICING AND HEDGING VIA NEURAL SDES**

https://arxiv.org/pdf/2007.04154.pdf

# Reinforcement Learning

https://quantdare.com/reinforcement-learning-for-trading/

**https://arxiv.org/pdf/1901.08740.pdf**

https://arxiv.org/pdf/1901.08740.pdf

## D. Lu,Agent inspired trading using recurrent reinforcement learning and lstmneural networks, arxiv (2017)
https://arxiv.org/pdf/1707.07338.pdf


**Deep Reinforcement Learning for Active High Frequency Trading**
https://arxiv.org/abs/2101.07107

**A Deep Reinforcement Learning Framework for the Portfolio Management Problem**
https://arxiv.org/abs/1706.10059

**Using Reinforcement Learning in the Algorithmic Trading Problem**
https://arxiv.org/abs/2002.11523

**Reinforcement Learning for Market Making in a Multi-agent Dealer Market**
https://arxiv.org/abs/1911.05892

**Bridging the Gap Between Markowitz Planning and Deep Reinforcement Learning**
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3702112


**Knowledge discovery with Deep RL for selecting financial hedges**
+ https://aaai-kdf.github.io/kdf2021/assets/pdfs/KDF_21_paper_11.pdf

**Time your hedge with Deep Reinforcement Learning**
+ https://arxiv.org/pdf/2009.14136.pdf

**FinRL: A Deep Reinforcement Learning Library forAutomated Stock Trading in Quantitative Finance**
+ https://arxiv.org/pdf/2011.09607.pdf
+ https://github.com/AI4Finance-LLC/FinRL-Library

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



**Nowcasting Networks**
+ https://www.lpsm.paris/pageperso/crepey/papers/nowcasting-networks.pdf

+ https://github.com/mChataign/smileCompletion/blob/master/TensorflowNowcasting.ipynb

+ https://github.com/mChataign/DupireNN


**Hayou, S. Cleaning the correlation matrix with a denoising autoencoder**
+ https://arxiv.org/pdf/1708.02985.pdf
+ Natixis Prize 2018

# GANs


**Quant GANs:Deep Generation of Financial Time Series Magnus Wiese1, 2,∗Robert Knobloch2Ralf Korn1, 2Peter Kretschmer (2019)**

+ https://arxiv.org/pdf/1907.06673.pdf

+ Temporal convolutional Neural Networks as architecture

**Adriano Soares Koshiyama, Nick Firoozye, and Philip C. Treleaven. , Generative Adversarial Networks for Financial Trading Strategies Fine-Tuning and Combination (2019)**

**Adriano Soares Koshiyama, Applications of Machine Learning Methods in Financial Markets , PHD Thesis**
+ https://discovery.ucl.ac.uk/id/eprint/10110310/1/Adriano%20Koshiyama%20-%20PhD%20Thesis.pdf


**Can we predict a market regime from correlation matrix features?**
https://marti.ai/qfin/2020/09/04/correlation-matrix-features-market-regimes.html

**Improving the Robustness of Trading Strategy Backtesting with Boltzmann Machines and Generative Adversarial Networks**
https://arxiv.org/pdf/2007.04838.pdf

**A Data-driven Market Simulator for Small Data Environments**
https://arxiv.org/abs/2006.14498


**Conditional Sig-Wasserstein GANs for Time Series Generation**
https://arxiv.org/abs/2006.05421


**CorrGAN**
+ https://arxiv.org/abs/1910.09504
+ https://colab.research.google.com/drive/1S9qIFOGQZwHAR5-Jqm_u_EuQ2ebRidi-?usp=sharing


# Covariance and Correlation Matrices

**Cleaning large correlation matrices: Tools from Random Matrix Theory**
https://www.sciencedirect.com/science/article/pii/S0370157316303337

**A review of two decades of correlations, hierarchies, networks and clusteringin financial markets**
https://arxiv.org/pdf/1703.00485.pdf



**Enhancing Time Series Momentum Strategies Using Deep Neural Networks, Bryan Lim, Stefan Zohren, Stephen Roberts**

https://arxiv.org/abs/1904.04912

+ Train Deep Neural Network by optimising sharpe

**Temporal Latent Auto-Encoder: A Method for Probabilistic Multivariate TimeSeries Forecasting**

https://arxiv.org/pdf/2101.10460.pdf

**Risk Management with GenerativeAdversarial Networks**
https://www.natixis.com/natixis/en/lukas-benedikt-fiechtner-s-thesis-risk-management-with-generative-adversarial-networks-rpaz5_127493.html
+ Natixis Prize 2020


**Nikolay Nikolaev, Deep Cleaning of Covariance Matrices for Portfolio Allocation**
+ Linkedin article: https://www.linkedin.com/pulse/deep-cleaning-covariance-matrices-portfolio-nikolay-nikolaev/
+ Essentially, use Autoencoder to clean / learn covariance matrix as opposed to shrinkage / Random Matrix Theory. Not a lot of exposition other than 


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

**Adaptive trading strategies across liquidity pools, Baldacci, Manzuk (2020)**
+https://arxiv.org/pdf/2008.07807.pdf
+ Risk 2021 Rising stars in quant finance

**Deep Investing in Kyle's Single Period Model**
https://arxiv.org/abs/2006.13889

**Phase Transitions in Kyle’s Model with MarketMaker Profit Incentives**

Thierry Foucalt


# Limit Order Book

**DEEP LEARNING  MODELLING OF THE LIMIT ORDER BOOK:A COMPARATIVE PERSPECTIVE**
https://arxiv.org/pdf/2007.07319.pdf

**Deep Learning Digital Asset Books**
https://arxiv.org/pdf/2010.01241.pdf

**A stochastic PDE model for limit order book dynamics**
https://arxiv.org/abs/1904.03058

**Benchmark dataset for mid-price forecasting of limit orderbook data with machine learning methods**
https://onlinelibrary.wiley.com/doi/pdf/10.1002/for.2543

**Mid-Price Movement Predictionin Limit Order Books UsingFeature Engineering and Machine Learning**
https://trepo.tuni.fi/bitstream/handle/10024/117394/978-952-03-1288-6.pdf?sequence=5&isAllowed=y

**XTX Forecasting Challenge First Place - Andrey Rybin**
+ Slides: https://gh.mltrainings.ru/presentations/Rybin_XTX2019.pdf
+ Presentation: https://www.youtube.com/watch?v=Nv7l3_ealKc


Code Samples:
+ https://github.com/hamzah2304/DeepLOB/blob/main/DeepLOB.ipynb
+ https://github.com/zcakhaa/DeepLOB-Deep-Convolutional-Neural-Networks-for-Limit-Order-Books
+ https://github.com/Vibhuti49/DeepLOB/blob/main/LOB.ipynb
+ https://github.com/MingyuZha/Deep_Learning_In_Limited_Order_Books
+ https://github.com/jessgess/deep-learning-for-order-book-price-and-movement-predictions
+ https://github.com/FSUHeting/DL_LOB_Trading_and_MidPirce_Movement

**Phil Stubbings - Visualising Limit Order Books**
+ http://parasec.net/transmission/order-book-visualisation/#data


# Quant Culture

+ The Man Who solved the market

+ Emmanuel Derman - My Life as a Quant

+ Scott Patterson  



# Algorithmic Trading

**Deep optimal stopping**
	
https://arxiv.org/pdf/1804.05394.pdf	

**Offline Algorithms for Low Frequency Trading**
https://queue.acm.org/detail.cfm?id=3448307

**Enhancing  Time  Series  Momentum  StrategiesUsing  Deep  Neural  Networks**
+ https://arxiv.org/pdf/1904.04912.pdf

**Marcos López de Prado, Tactical Investment Algorithms (2019)**

https://poseidon01.ssrn.com/delivery.php?ID=883022123123085090026094013002100126050076068001039051073091012098009018097116081095110048059008102059004068089111074119110007012020000002083004090070067084122064081036047002120072119076120028127013125114014114015118119113092120108080105001081117120&EXT=pdf

+ Walk Forward backtests assume that theres is only one path; Resampling assumes history will repeat itself.

+ Monte Carlo backtests

**Trading Signals In VIX Futures**
+ https://arxiv.org/pdf/2103.02016.pdf
+ Backtest of VIX futures trading using DNNs

**Design and analysis of momentum trading strategies**
+ https://arxiv.org/pdf/2101.01006.pdf

## Backtesting

**Harvey, C.R., Liu, Y., Backtesting (2015)**
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2345489

**Harvey, C.R., Liu, Y., Evaluating Trading Strategies (2014)**
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2474755



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

**Numerai Forum - Model Diagnostics: Feature Exposure**
https://forum.numer.ai/t/model-diagnostics-feature-exposure/899

+ The idea is that models should not be overly dependent on single features in the Numerai tournament, since the features and target might have time varying dependence/correlations. This user proposes "Feature Neutralisation", which from my understanding is just orthogonalising model predictions using linear predictions


# Volatility

**Using tensorflow for dupire local volatility model**

https://arxiv.org/pdf/2002.02481.pdf

**Deep Learning VolatilityA deep neural network perspective on pricing and calibration in(rough) volatility models**

https://arxiv.org/pdf/1901.09647.pdf

**The quadratic rough Heston model and the joint S&P 500/VIX smile calibration problem**
https://arxiv.org/abs/2001.01789

**Tegner, A Probabilistic Approach toNonparametric Local Volatility**
https://arxiv.org/pdf/1901.06021.pdf

**Gatheral, J., Jacquier, A., Arbitrage-free SVI volatility surfaces (2013)**

https://arxiv.org/pdf/1204.0646.pdf

**Artificial Neural Networksfor SABR modelcalibration & hedging , MSc Thesis (2020)**
+ https://www.imperial.ac.uk/media/imperial-college/faculty-of-natural-sciences/department-of-mathematics/math-finance/Thorin_MSc_Thesis_NN_SABR.pdf

# Correlation Matrices

**Classification of Correlation Matrices using SPDNet with Riemannian Batch Normalization**

https://marti.ai/ml/2021/01/22/spdtorchnet.html

# Mathematical Finance

**SIMPLIFIED  STOCHASTIC  CALCULUS  WITH  APPLICATIONS  INECONOMICS  AND  FINANCE**

https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3500384

**The value of the high, low and close in the estimation of Brownian motion**
https://link.springer.com/article/10.1007/s11203-020-09229-xs

# Trend / Momentum

**Trend Filtering Methodsfor Momentum Strategies**

http://www.thierry-roncalli.com/download/lwp-tf.pdf

**Design and analysis of momentum trading strategies**

https://arxiv.org/abs/2101.01006

# Market Making


+ http://stanford.edu/class/msande448/2018/Final/Reports/gr5.pdf

**Order-book modelling and market making strategies**
+ http://wp.lancs.ac.uk/finec2018/files/2018/09/FINEC-2018-028-Xiaofei.Lu_.pdf

**Market Making and Mean Reversion**
+ https://www.cis.upenn.edu/~mkearns/papers/marketmaking.pdf

**Electronic Market Making an Investigation**
+ https://www.cs.cmu.edu/~softagents/papers/CR_nevmyvaka_sycara_seppi.pdf

**High Frequency Trading and the New-Market Makers**
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1722924

# Python for Finance

Yves Hilpisch 

Python for Finance

Artificial Intelligence for Finance, Python for Algorithmic Trading

Not that useful personally, for both financial theory and machine learning theory it would be better to read a textbook specifically on that subject


**Ernie Chan - Quantitative Trading (2008)**

Mostly a qualitative discussion about quantitative trading, and its philosophical aspects, with some light technical discussion. Would definitely be worth a read if you are a beginner (quite a short read at 200 pages). The code is in MATLAB, but the concepts can be translated to other languages.

Chapter 2: Idea Generation

> many strategies described by academics are either too complicated, out of date (perhaps the once-profitable strategies have already lost their power due to competition), or require expensive data to backtest

+ Short bottom ten and long top ten  [http://epchan.blogspot.com/2007/11/seasonal-trades-in-stocks.html](http://epchan.blogspot.com/2007/11/seasonal-trades-in-stocks.html) (( based on [Heston, Sadka (2005) - Seasonality in the Cross-Section of Expected Stock Returns](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=687022) ))

+ Constraints on strategies: your hours, technical proficiency in programming, capital.
+ Concerns: drawdowns, survivorship bias, turnover/ trading frequency, benchmark, data-snooping/look-ahead bias

Chapter 3: Backtesting

+ Metrics: Sharpe (mentions risk free rate adjustment can be ignored in some cases, such as if portfolio is dollar-neutral and thus funding rate would be near 0), Max Drawdown, Max Drawdown duration
+ Example 3.6: GLD and GLX pairs trade. Uses OLS to determine hedge ratio.
+ Example 3.7: Mean Reversion strategy from a paper by Andrew Lo, which claims to have 4.47 Sharpe (no transaction costs): Short worst performing stocks by one day return , long best performing stocks by one day return. On Chan's experiment, assuming a 0.05 transaction cost per trades, then Sharpe decreases to 0.25 on S&P500 - since the paper's returns are generated on mostly small cap. In Example 3.8, Chan uses Open prices instead of Close, which increases sharpe to 0.78

Chapter 4 is on setting up your business, Chapter 5 on execution

Chapter 6 : Risk Management
+ Markowitz Portfolio . Kelly Criterion

Chapter 7
> "Trading strategies can be profitable only if securities prices are either mean-reverting or trending. Otherwise, they are random- walking, and trading will be futile.". 
> "Unless the expected earnings of a company have changed, stock prices will be mean reverting"

+ Errors in financial price/quote/tick data. Survivorship bias
+ PostEarnings announcement drift
+ Momentum driven by large institutional orders, animal spirits
+ Regime Switching - Volatility Regime switching (GARCH). Estimation can be done by assuming latent regimes, and defining transition probabilities. Markov switching model.
+ Turning point models
+ Example: Neural Network approach? "How large a percent change is sufficient to trigger a regime switch? What should N be in the N-day high/low con- dition? And how long does the new regime generally last? (In other words, what is the optimal holding period?)". Uses one day returns of Goldman Sachs against future k-period returns.
+ Stationarity, Cointegration

**Ernie Chan - Algorithmic Trading - Winning Strategies and their rationale (2013)**

Chapter 1: backtesting

+ Pitfalls :Lookahead bias, data-snooping (too many parameters)
> There is a general approach to trading strategy construction that can min- imize data-snooping bias: make the model as simple as possible, with as few parameters as possible
+ Linearity of pricing, and capital allocation. Can also use the ranks of stocks given a certain factor, and their signed correlation with the target (Spearman correlation?)
+ Assume a distribution for the Sharpe Ratio (e.g. Normal(0, 1)). Then we can test the p-value under the distribution.

> Example: A neural net trading model that has about 100 nodes gener- ates a backtest Sharpe ratio of 6.
> "My alarms always go off whenever I hear the term neural net trad- ing model, not to mention one that has 100 nodes."

Chapter 2: Mean Reversion
+ Ad fuller test (test for stationarity under a linear model). Hurst Exponent (measure of self similarity. For trending H> 0.5, mean reverting H < 0.5). Variance Ratio Test
+ Cointegration. Cointegrated Ad-Fuller test. Johansen Test.

Chapter 3: implementing mean reversion
+ Bollinger Bands; enter and exit based on z-scores of deviation. Schoenberg and Corwin (2010). "you can always find a single entry/exit level that will generate a higher average return in a backtest" - which is the 'all in'
+ Kalman Filter

Chapter 4: Mean reversion on stocks and ETFs
+ Buy on gap

Chapter 5: Mean reversion on currencies and futures
+ Calendar spreads, cross rates

Chapter 6: Interday momentum strategies
+ Test for time series momentum: Hurst Exponent. Autocorrelation/Correlation between different lagged returns / sign of returnss
+ Moskowitz,Yao, and Pedersen. buy (sell) the future if it has a positive (negative) 12-month return, and hold the position for 1 month  
+ futures have autocorrelation due to roll returns
+ cross sectional
+ mutual fund inflows/outflows 

Chapter 7: Intraday momentum:
+ High frequency strategies:  If the bid size is much bigger than the ask size, expect the price to tick up and vice versa. This idea is backed by academic research.
+ ratio trade:  join the bid only when the original bid size is much larger than the ask size.
+ In markets where the bid-ask spread is bigger than two ticks, there is another simple trade to benefit from the expectation of an uptick. Simply place the buy order at the best bid plus one tick. If this is filled, then we place a sell order at the best ask minus one tick and hope that it is filled. But if it is not, we can probably still sell it at the original best bid, with the loss of commissions plus one tick.This is called ticking or quote matching. For this trade to be profitable, we need to make sure that the round trip commission per share is less than the bid-ask spread minus two ticks.This strategy is il- lustrated in Figure 7.3.

+ Even when there is no preexisting buying pressure or bid-ask size imbal- ance, we can create the illusion of one (often called momentum ignition).This works for markets with time priority for orders instead of using pro-rata fills. Let’s assume we start with very similar best bid and ask sizes.We will place a large buy limit order at the best bid to create the impression of buy- ing pressure, and simultaneously place a small sell limit order at the best ask. This would trick traders to buy at the ask price since they anticipate an uptick, filling our small sell order. At this point, we immediately cancel the large buy order.The best bid and ask sizes are now roughly equal again. Many of those traders who bought earlier expecting a large buying pressure may now sell back their holdings at a loss, and we can then buy them at the original best bid.This is called flipping.

+ nce support (resistance) levels are breached, prices will go further down (up) for a while (Osler, 2000, 2001). These support and resistance levels can be those reported daily by banks or brokerages, or they can just be round numbers in the proximity of the cur- rent price levels.This short-term price momentum occurs because of the large number of stop orders placed at or near the support and resistance levels.

Chapter 8: Risk Management

**Ernie Chan - Machine Trading (2017)**
+ Data Vendors: CSI Data, Quandl, CSRP, ORATS, ivolatility.com, quantgo.com, compustat, terminal
+ Calmar Ratio

Chapter 2: Factor Models
+ Time Series factors, Cross Sectional factors (Fama-French)
+ Implied Moments from Option prices.  Bali, Hu, and Murray (2015). Stock returns are correlated to these implied moments, which are functions of ATM put and call imlied volatilities. Authors present CAGR 9.68%, Chan finds 0; no predictive ability on large-cap stocks.
+ Change in implied vol. Put call implied vol
+ Stepwise regression; select factors based on AIC/BIC. Regression not necessarily needed; Rank stocks by some factor and purchase top kth quartile. Ranking is more robust to outliers and high leverage points.

Chapter 3: Time Series
+ ARIMA

Chapter 6:
+ Order flow is a signed volume. If only price and volume are available Tick rule: trade that transacts price higher than previous trade generates buy, and below then sell.
+ Bulk Volume Classification  (Lopes de Prado and O'Hara). Buy order flow is $V \cdot \Phi^{-1}(\frac{\Delta P}{\sigma \Delta P})$, and Sell order flow is:  $-V \cdot [1 - \Phi^{-1}(\frac{\Delta P}{\sigma \Delta P})]$
+ Order flow strategy: " buy if aggregate order flow is greater than a threshold, exit a long position if it is not positive, and vice versa for shorts."
+ Order Book Imbalance: \frac{V_{B} - V_{A}}{V_{B} + V_{A}}

### Mean Reversion

**A closed-form solution for optimal mean-reverting trading strategies**
https://arxiv.org/abs/2003.10502


## Recommender Systems

+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3386669

# Websites / Resources


**Rob Carver's Blog**
https://qoppac.blogspot.com/

https://pythonforfinance.net/


Vincent Zoonekynd's Blog
http://zoonek.free.fr/blosxom/

Gautier Marti
https://gmarti.gitlab.io/

+ sebastian.statistics.utoronto.ca/s

+ https://github.com/LechGrzelak/Computational-Finance-Course


# Places to find papers

MSc Theses
+ Imperial Theses https://www.imperial.ac.uk/mathematics/postgraduate/msc/mathematical-finance/project-and-thesis/
+ Oxford Msc MCF Theses
+ Natixis Prize: https://www.natixis.com/natixis/en/prize-for-best-master-s-thesis-in-quantitative-finance-rpaz5_115028.html
+ HKUST https://lbezone.ust.hk/bib/b1106644

# Data
+ https://www.sec.gov/data/foiadocsfailsdatahtm
+ https://www.cuemacro.com/2021/01/30/are-there-sources-of-free-data-for-markets/


## Podcasts

+ Flirting with Models: https://blog.thinknewfound.com/podcast/s3e10-sandrine-ungari/
+ Risk.net podcast

