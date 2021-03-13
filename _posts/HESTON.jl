### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ e637f8ae-7e0b-11eb-31d9-c5343065be69
md"""
The Heston volatility model follows

$dS_{t} = S_{t} = (r - q)dt + \sqrt{V_{t}} dW_{t}$
$dV_{t} = k(\nu - V_{t}) dt + \lambda \sqrt{\nu_{t}}dZ_{t}$
$Cov(W_{t}, Z_{t}) = \rho dt, \rho \in (-1, 1)$
+ Initial volatility : $\sigma_{0} > 0$
+ Equilibrium volatility : $\nu$
+ Speed of mean reversion $k$
+ vol of vol: $\lambda$ . If $2k\nu > \lambda^2$ variance cannot reach zero (Feller condition)
+ Variance $V_{t}$  is is non-centrally chi-squared distributed, \sqrt{V_{t}} is Rayleigh Distributed
+ Log-Price: $\phi(u, t) := \mathbb{E}[exp(iu \log(S_{t}) | S_{0}, \sigma_{0}^{2}]$

\begin{align}
\phi(u, t)  &=  exp(iu(logS0+ (r−q)t))×exp(ηκλ−2((κ−ρλiu+d)t−2 \\
            & \times log((1−g1edt)/(1−g1))))×exp(σ20λ−2(κ−ρλiu+d)(1−edt)/(1−g1edt))\\
\end{align}

Fast-Reversion Limit of the Heston Model

https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2418631

"""

# ╔═╡ Cell order:
# ╠═e637f8ae-7e0b-11eb-31d9-c5343065be69
