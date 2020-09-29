-- example 3.11

import Statistics.Distribution
import Statistics.Distribution.Geometric

g :: GeometricDistribution
g = geometric 0.02

main = do
  putStrLn $ "the rate of engines which survive two hours: " ++ show (1 - cumulative g 2.0)
  putStrLn $ "the rate of engines which survive two hours: " ++ show (complCumulative g 2.0)
