### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 61d79b04-7db7-11eb-1f8f-cbd858393030
md"""
Engle-Granger Two-Step Error Correction Model

$y_{t} = log(Y_{t}), x_{t} = log(X_{t})$

Order 1

$y_{t} = c + \gamma x_{t} + z_{t}$

$\delta y_{t} = y_{t} - y_{t - 1}  = \alpha z_{t - 1} + \epsilon_{t}$


Test for Cointegration
+ Ad-Fuller Test on residuals $z_{t}$
"""

# ╔═╡ 3f05c2d8-7dba-11eb-3c50-f169294281fc
md"""

https://hudsonthames.org/correct-backtest-methodology-pairs-trading/

https://docs.google.com/presentation/d/1oFpv7OUi3W9F2D30rEQRy_Ra5ejLtlCMnk9nTJnMDr4/edit#slide=id.gb70b23aaa3_1_0


https://drive.google.com/file/d/1ZeJD81OrKln8QDxm1sU63ivRgqXCcQbS/view

https://docs.google.com/presentation/d/19xUNdddCsdXg2KizcUMVvdjhTnA8Cuq293brXB8rSWM/edit#slide=id.p

https://docs.google.com/presentation/d/1Cb9NizOkvCx6-p6X3AVZyxjviub7kF2sCPy2gBiT9nk/edit#slide=id.p

https://hudsonthames.org/copula-for-pairs-trading-overview-of-common-strategies/

https://hudsonthames.org/optimal-stopping-in-pairs-trading-ornstein-uhlenbeck-model/


Tim Leung, Optimal Mean Reversion Trading with Transaction Costs and Stop-Loss Exit (2015)
https://arxiv.org/abs/1411.5062


"""

# ╔═╡ Cell order:
# ╠═61d79b04-7db7-11eb-1f8f-cbd858393030
# ╠═3f05c2d8-7dba-11eb-3c50-f169294281fc
