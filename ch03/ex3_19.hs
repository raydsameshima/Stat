-- example 3.19

import Statistics.Distribution
import Statistics.Distribution.Poisson

-- Let a half-hour be our unital time.
pd :: PoissonDistribution
pd = poisson 1.0

p :: Double -> Double
p y = cumulative pd y - cumulative pd (y-1)

main = do
  putStrLn $ show (p 0)
  putStrLn $ show (p 1)
  putStrLn $ show (p 2)
  putStrLn $ show (1 - p 0)

