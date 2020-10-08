-- example 3.19

import Statistics.Distribution
import Statistics.Distribution.Poisson

-- Let a half-hour be our unital time.
pd :: PoissonDistribution
pd = poisson 1.0

p :: Int -> Double
p = probability pd

main = do
  putStrLn $ "the patrol will miss during the 0th period: " ++ show (p 0)
  putStrLn $ "the patrol will miss during the 1th period: " ++ show (p 1)
  putStrLn $ "the patrol will miss during the 2th period: " ++ show (p 2)
  putStrLn $ "the patrol will miss at least once:         " ++ show (1 - p 0)

