-- ch3 example 3.17

import Statistics.Distribution
import Statistics.Distribution.Hypergeometric

h :: HypergeometricDistribution
h = hypergeometric m l k
  where
    m =  4 -- r
    l = 20 -- N of population size
    k =  5 -- n of samplie size

-- Since cumulative is P(X <= x):
p :: Double -> Double
p k = cumulative h k - cumulative h (k-1)

main :: IO ()
main = do
  putStrLn $ "p2 + p3 + p3 = " ++ show (p 2 + p 3 + p 4)
  putStrLn $ "1 - p0 - p1 =  " ++ show (1 - p 0 - p 1)

