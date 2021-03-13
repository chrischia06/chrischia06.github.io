### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 413bc522-7d27-11eb-0c68-e9b6228728c3
begin
	using LinearAlgebra;
	using Random;
	using Plots;
end

# ╔═╡ 046e441e-7d39-11eb-128d-9965981464f1
begin
using PyCall
np = pyimport("numpy")
end

# ╔═╡ 919e2ef6-7d24-11eb-3ebd-8f770adc87c9
md"""
# Volatility is rough (2014)

[https://arxiv.org/pdf/1410.3394.pdf](https://arxiv.org/pdf/1410.3394.pdf)

Log-prices $Y_{t}$ often modelled as a semi-martingale

$dY_{t} = \mu_{t} dt + \sigma dW_{t}$


+ Dupire Local Volatility - $\sigma(Y_{t}, t)$ is a deterministic function of state $Y_{t}$ and time
+ Stochastic Volatility - Hull and White, Heston, SABR
+ Neither model the implied volatility surface well

Volatility as a *long memory* process

This makes Fractional Brownian Motion possibly better suited to capture this, given long-memory given the Hurst Exponent h < 1/2

$\mathbb{E}[|W_{t + \Delta}^{H} - W_{t}^{H}|^{q}] = \mathbb{E}[|Z|^{q}] \Delta^{q H}$

$\psi(\tau) := |\frac{\partial}{\partial k} \sigma_{BS}(k , \tau)|_{k = 0} , k = log(S/K)$

"""

# ╔═╡ 222d672a-7d25-11eb-00ab-3f2572366f63
begin
	
function cov_at(s, t, H)
	(abs(s) ^ (2 * H) + abs(t) ^ (2 * H) - abs(s - t) ^ (2 * H)) / 2
end


N = 100
H = (1:9) ./ 10 #hurst parameter h < 1/2 negatively corrleated;  h > 1/2 positively correlated
dt = 0.1
rng = MersenneTwister(1234);
p = plot()
for h = H
	cov_matrix = [cov_at(i, j, h) for i = (1:N) .* dt for  j = (1:N) .* dt]
	cov_matrix = reshape(cov_matrix, N, N)
	C = cholesky(cov_matrix)
	Ws = randn(rng, Float32, N)
	Bs = C.L * Ws
	print(Bs)
	plot!(p, (1:N) .* dt, Bs, label="H=$h");
end
p
end

# ╔═╡ 2f512d8c-7d2b-11eb-2f62-4fa0a8e0e102
md"""
ON  VIX  FUTURES  IN  THE  ROUGH  BERGOMI  MODEL

https://arxiv.org/pdf/1701.04260.pdf

Functional central limit theorems for rough volatility

https://arxiv.org/abs/1711.03078

+ https://github.com/search?p=2&q=rough+volatility&type=Repositories

Deep Learning Volatility

ON  VIX  FUTURES  IN  THE  ROUGH  BERGOMI  MODEL

The quadratic rough heston model and the joint s&p 500/vixsmile calibration problem

Turbo-Charged Rough Bergomi

Rough Volatility with Python: https://tpq.io/p/rough_volatility_with_python.html

Perfect hedging in rough Heston models

https://arxiv.org/pdf/1703.05049.pdf

Modelling Volatility with FractionalBrownian Motion and the RFSV Model, Bachelor Thesis

http://www.peterhinz.net/pdf/Bachelor_Thesis.pdf

Turbocharging Monte Carlo pricingfor the rough Bergomi model

https://arxiv.org/pdf/1708.02563.pdf

"""

# ╔═╡ Cell order:
# ╠═919e2ef6-7d24-11eb-3ebd-8f770adc87c9
# ╠═413bc522-7d27-11eb-0c68-e9b6228728c3
# ╠═222d672a-7d25-11eb-00ab-3f2572366f63
# ╠═046e441e-7d39-11eb-128d-9965981464f1
# ╠═2f512d8c-7d2b-11eb-2f62-4fa0a8e0e102
