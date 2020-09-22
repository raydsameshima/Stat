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
