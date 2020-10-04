-- example 3.20

import Statistics.Distribution
import Statistics.Distribution.Poisson

-- Let a ten-square-yard sampling region be a unit area; the mean density is 5 per square yard:
pd :: PoissonDistribution
pd = poisson 5.0

p :: Int -> Double
p = probability pd

main = do
  putStrLn $ "the probability that none of the regions will contain: P(X<1) = P(X=0): " 
          ++ show (p 0) 
