# Stat
Some statistics memo written in math, Haskell, and Maxima.

## References:
* Mathematical Statistics with Applications (7th Edition)
  (Wackerly, Mendenhall, Scheaffer)

* [statistics-0.15.2.0](https://hackage.haskell.org/package/statistics-0.15.2.0)

## Chapter Memo

### Ch.1 What is Statistics

The following function:

```haskell

f k = V.length . V.filter (\x -> (av-k*sd)<x && x< (av+k*sd)) $ samples

```
counts the number of element within k-sigma (k=1,2,3 ..), where samples is a vector of numerical data.

### Ch.2

### Ch.3
For a discrete distribution, use 

```haskell

probability :: d -> Int -> Double

```


Statistics.Distribution.Hypergeometric

```haskell

hypergeometric 
  :: Int                        -- m = r in the text, the number of red 
  -> Int                        -- l = N of the total population
  -> Int                        -- k = n of the sample size
  -> HypergeometricDistribution

cumulative 
  h -- :: HypergeometricDistribution
  x -- :: y = x of a random variable

```

A powerful simplification can be provided by loading:

```maxima
load(simplify_sum)$
```

Discrete Distribution | Examples and Theorems 
----------------------|----------------------
Binomial              | ex3_21.hs
Geometric
Hypergeometric
Poisson               | theo3_11.mac ex3_18.mac ex3_20.hs ex3_21.hs ex3_23.mac ex3_24.mac
Negative binomial
