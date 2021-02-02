---
layout: post
title: Market Making Strategies
subtitle: reading about market microstructure
---


## Market Making Strategies

### Market Making

Post prices we are willing to buy and sell out. If vol is high, then we might expect both our bid and asks to be hit, giving us a riskless profit.

Determing Price:
+ VWAP
+ Mid-Price

Determine Spread

Determine Volume

The risk is that only one side of our prices fit - a trending market.

### Momentum

Use the limit order book, or last traded ticks to forecast the direction across some time horizon. The engage in pre-hedging - buy / sell in the forecasted direction, and then close out the trade. This is a question of modelling

### Listing Arbitrage / Pairs Trade

For an asset listed on multiple exchanges, if there is a discrepancy between their listed prices - i.e.  $best\_ask_i < best\_bid_j$ for some two exchanges, then given the underlying is the same, an arbitrage exists. 

In practice, this would probably require low latency to execute. Additional questions: how to ensure that your order gets filled first (tighten the spread?), and what volume to buy/sell.

This assumes that there is no underlying structural reason behind the discrepancies between exchanges (e.g. liquidity premium vs the exchanges)


