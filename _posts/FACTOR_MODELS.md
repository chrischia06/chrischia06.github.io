
# Factor Models

**Paolo Andreini, Cosimo Izzo1,, and Giovanni Ricco, Deep Dynamic Factor Models (2020)**
+ https://arxiv.org/pdf/2007.11887.pdf
+ [Slides](https://download-files.wixmp.com/ugd/708bcd_913acaf014064a3a9d97cf09046fa0d8.pdf?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1cm46YXBwOmU2NjYzMGU3MTRmMDQ5MGFhZWExZjE0OWIzYjY5ZTMyIiwic3ViIjoidXJuOmFwcDplNjY2MzBlNzE0ZjA0OTBhYWVhMWYxNDliM2I2OWUzMiIsImF1ZCI6WyJ1cm46c2VydmljZTpmaWxlLmRvd25sb2FkIl0sImlhdCI6MTYxMzY4NjE3OSwiZXhwIjoxNjEzNzIyMTg5LCJqdGkiOiIyMDZmNWU4Y2RkOGQiLCJvYmoiOltbeyJwYXRoIjoiL3VnZC83MDhiY2RfOTEzYWNhZjAxNDA2NGEzYTlkOTdjZjA5MDQ2ZmEwZDgucGRmIn1dXX0.i1Anqxnk2VAp8DX9hJiqm8JAcAlXJzyUCLmRNbj0MHY&filename=D2FM.pdf)

+ Dynamic Factor Models are prevalent in Econometric literature; the key limitation are that it assumes linearity, and scalability
+ Use Denoising Autoencoders

**Kentaro Imajo,Kentaro Minami,Katsuya Ito,Kei Nakagawa, Deep Portfolio Optimization via Distributional Prediction of Residual Factors (2021)**
+ https://arxiv.org/pdf/2012.07245.pdf

> We propose a novel method to extract residual informa-tion,  which  we  call  thespectral  residuals.  The  spectralresiduals can be calculated much faster than the classicalfactor analysis-based method without losing the ability tohedge out exposure to the market factors. Moreover, thespectral residuals can easily be combined with any pre-diction algorithms.

Spectral residuals would be the factor residuals under PCA, or equivalently the residuals from a deep factor model.

> We propose a new system for distributional prediction ofstock prices based on deep neural networks. Our systeminvolves two novel neural network architectures inspiredby  well-known  invariance  hypotheses  on  financial  timeseries. Predicting the distributional information of returnsallows us to utilize the optimal portfolio criteria offeredby modern portfolio theory.


+ To account for Volatility invariance, the authors suggest ReLU neural networks without the bias term - which will be positive homogenous. "Fractal" networks

> We demonstrate the effectiveness of our proposed meth-ods on real market data.

**Kei Nakagawa1, Takumi Uchida,Tomohisa Aoshima, Deep Factor Model –Explaining Deep Learning Decisions for Forecasting Stock Returns withLayer-wise Relevance Propagation–**

https://arxiv.org/pdf/1810.01278.pdf

Deep Recurrent Factor Model: Interpretable Non-Linear and Time-VaryingMulti-Factor Model

https://arxiv.org/ftp/arxiv/papers/1901/1901.11493.pdf

**Dixon, M., Polson, N., Deep Fundamental Factor Models (2020)**
https://arxiv.org/pdf/1903.07677.pdf
+ Interpreting Deep Factors by sensitivity to inputs / gradients
+ Interaction effects in Hessian, Jacobian

**Gu, S., Kelly, B., Xiu,D., Autoencoder Asset Pricing Models(2019)**


**Gu, S., Kelly, B., Xiu,D., Empirical Asset Pricing via MachineLearning (2018)**
https://dachxiu.chicagobooth.edu/download/ML.pdf
+ Seems to be just applying ML methods on many factors



**Machine Learning for Factor Investing (2020)**
+ http://www.mlfactor.com/
+ Commentary by Gautier Marti : https://gmarti.gitlab.io/qfin/2020/05/19/commented-summary-machine-learning-for-factor-investing.html



**Deep Portfolio Theory (2016)**
+ https://arxiv.org/pdf/1605.07230.pdf
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2838013

Proposes a 4 step process:
1. Encode: Learn a latent representation of the data $\mathbf{X}$ via autoencoder (with regularisation / sparsity)

$$ \| X - F(X)\|^{2} s.t. \|W\| \leq L^{m} $$

Essentially just a "Deep" version of PCA $R = (RW)W^{T} + \epsilon = FW^{T} + \epsilon \iff X = f(X) + \epsilon$. Furthermore, the authors specify an architecture where the hidden layer has 5 units, and "relu", which would translate to a portfolio of compound options

> (In reproducing the universe of stocks from a bottleneck net-work structure, the auto-encoder reduces the total information to an information subsetwhich is applicable to a large number of stocks.  Therefore, proximity of a stock to its auto-encoded version provides a measure for the similarity of a stock with the stockuniverse.)

Calls the squared distance, for each column the "communal information" $\|X_{i} - f(X_{i}) \|$, i.e.

$(F \circ G) X$, G encoder, F, decoder



2. Calibrate: 

$$ \| X - F(X)\|^{2} s.t. \|W\| \leq L^{m} $$

> For a desired result (or target)Y, find theportfolio-map, denoted by $F^{p})W(X)), that solves the regularization problem $ min_{W} \|Y − F^{p}_{W}(X) \| s.t. \| W \|  \leq L^{p} \| $

3. Validation
4. Verification


 While the title is "Deep Portfolio Theory", really seems to be a sort of "Deep Factor Model" (stated by the authors on page 2, "Deep portfolio theory relies on deep factors"

 Factors not uncorrelated and not that interpretable



+ https://github.com/tcloaa/Deep-Portfolio-Theory


**Deep Factors for Forecasting**
+ http://proceedings.mlr.press/v97/wang19k/wang19k.pdf

