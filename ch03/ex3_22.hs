-- example 3.22

import Statistics.Distribution
import Statistics.Distribution.Poisson

-- three accidents per month means six accidents per two-months:
pd :: PoissonDistribution
pd = poisson 6.0

p :: Int -> Double
p = probability pd 

main = do
  putStrLn $ "the mean =   " ++ show (mean pd)
  putStrLn $ "the stdDev = " ++ show (stdDev pd)
  putStrLn $ "the probability of ten accidents in two months: " ++ show (p 10)
