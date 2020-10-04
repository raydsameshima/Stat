-- example 3.19

import Statistics.Distribution
import Statistics.Distribution.Poisson

-- Let a half-hour be our unital time.
pd :: PoissonDistribution
pd = poisson 1.0

p :: Double -> Double
p y = cumulative pd y - cumulative pd (y-1)

main = do
  putStrLn $ "the patrol will miss during the 0th period: " ++ show (p 0)
  putStrLn $ "the patrol will miss during the 1th period: " ++ show (p 1)
  putStrLn $ "the patrol will miss during the 2th period: " ++ show (p 2)
  putStrLn $ "the patrol will mill at least once:         " ++ show (1 - p 0)

