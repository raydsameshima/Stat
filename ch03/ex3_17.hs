-- ch3 example 3.17

import Statistics.Distribution
import Statistics.Distribution.Hypergeometric

h :: HypergeometricDistribution
h = hypergeometric m l k
  where
    m =  4 -- r
    l = 20 -- N of population size
    k =  5 -- n of samplie size

p :: Int -> Double
p = probability h

main :: IO ()
main = do
  putStrLn $ "p2 + p3 + p3 = " ++ show (p 2 + p 3 + p 4)
  putStrLn $ "1 - p0 - p1 =  " ++ show (1 - p 0 - p 1)
  putStrLn $ "1 - P(X<=1) =  " ++ show (complCumulative h 1)
  
  putStrLn $ "Indeed p0 and p1 are: " ++ show (p 0) ++ " and " ++ show (p 1)
  putStrLn $ "The mean = " ++ show (mean h) ++ " variance = " ++ show (variance h) 
          ++ " and stdDev = " ++ show (stdDev h) 
