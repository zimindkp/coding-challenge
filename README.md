# Coding Challenge

Here is a sample project that will give us some insight into your current level of experience.

This is a simple project, but organize, design, test and document your code as if it were going into production. Write your README as if it was for a production service, and include the following items:

* Reasoning behind your technical choices
* Trade-offs you might have made, or what you might do differently if you were to spend additional time on the project

## Functional spec

Create a portfolio rebalancing module. Each WealthSimple customer has a portfolio with a set of investments along with target allocations for these investments. However, as share prices fluctuate, the actual allocations of investments may diverge from the target allocations. For example:

| Ticker | Target allocation | Actual allocation | Shares owned | Share price |
|--------|-------------------|-------------------|--------------|-------------|
| GOOG   | 60%               | 50.96%            | 52           | $98         |
| AAPL   | 30%               | 29.92%            | 136          | $22         |
| TSLA   | 10%               | 19.12%            | 239          | $8          |

The job of the rebalancing module is to buy or sell shares to bring the actual allocation of investments as close as possible to the target allocations.

This program should not have any UI. It should take in the current state of investments and target allocations as inputs, and output the set of buys and sells necessary to rebalance these investments (e.g `buy 9 shares of GOOG, sell 114 shares of TSLA`).

## Technical spec

Here are some technologies we are more familiar with -- feel free to use any to complete the challenge:

* Ruby (our web backend is written in Ruby)
* Java (our trade execution code is written in Java)
* JavaScript (our web frontend uses JavaScript)

## How we review

The aspects of your code we will judge include:

* Functionality: Does the application do what was asked?
* Code quality: Is the code simple, easy to understand, and maintainable?
* Testing: How thorough are the automated tests? Will they be difficult to change if the requirements of the application were to change?
* Technical choices: Do choices of libraries, frameworks, etc. seem appropriate for the chosen application?
