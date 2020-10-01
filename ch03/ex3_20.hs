-- example 3.20

import Statistics.Distribution
import Statistics.Distribution.Poisson

-- Let a ten-square-yard sampling region be a unit area; the mean density is 5 per square yard:
pd :: PoissonDistribution
pd = poisson 5.0

-- p y return the probability P(y-1 < X <= y), hence P(X = y): 
p :: Double -> Double
p y = cumulative pd y - cumulative pd (y-1)

main = do
  putStrLn $ "the probability that none of the regions will contain: P(X<1) = P(X=0): " 
          ++ show (p 0) 
