# Stat
some stat. memo

## References:
* Mathematical Statistics with Applications (7th Edition)
  (Wackerly, Mendenhall, Scheaffer)


## Chapter Memo

### Ch.1 What is Statistics

The following function:

```haskell

f k = V.length . V.filter (\x -> (av-k*sd)<x && x< (av+k*sd)) $ samples

```
counts the number of element within k-sigma (k=1,2,3 ..), where samples is a vector of numerical data.

### Ch.2

### Ch.3
Statistics.Distribution.Hypergeometric

```haskell

hypergeometric 
  :: Int                        -- m = r in the text, the number of red 
  -> Int                        -- l = N of the total population
  -> Int                        -- k = y of a particular random variable
  -> HypergeometricDistribution

```


