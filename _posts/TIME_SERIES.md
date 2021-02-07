# Time Series Forecasting

A collection of papers, links, books that I found really useful in learning about time series modelling.

+ Univariate Time Series
+ Panel Data
+ Multivariate to Multivariate
+ Deep Neural Network (DNN, LSTM, CNN etc.) based approaches


M5 Forecasting

Hyndman, R. Principles of Forecasting (2020)



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


https://link.springer.com/article/10.1007/s10618-019-00619-1

https://papers.nips.cc/paper/2018/file/5cf68969fb67aa6082363a6d4e6468e2-Paper.pdf

**DeepAR: Probabilistic Forecasting with Autoregressive Recurrent networks**
https://arxiv.org/abs/1704.04110


**Taleb, N.N., On the Statistical Differences between BinaryForecasts and Real World Payoffs (2017)**
https://arxiv.org/pdf/1907.11162.pdf


**Facebook's Prophet**
+ Benchmarking: https://kourentzes.com/forecasting/2017/07/29/benchmarking-facebooks-prophet/
+ Critique: https://www.microprediction.com/blog/prophet

**A Worrying Analysis of Probabilistic Time-seriesModels for Sales Forecasting**
+ https://arxiv.org/pdf/2011.10715.pdf


**Vivesh Shah (Masters Thesis) A Comparative Study of Univariate Time-series Methods for Sales Forecasting**



## Libaries

+ Multivariate Singular Spectrum Analysis : https://github.com/kieferk/pymssa
+ tspDB (prediction directly from SQL): https://tspdb.mit.edu/

