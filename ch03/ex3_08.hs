-- ch03 example 3.8

import Statistics.Distribution
import Statistics.Distribution.Binomial

b :: BinomialDistribution
b = binomial 10 0.3

main = do
  putStrLn $ "If, at least nine of ten will recover:  " 
          ++ show (1-cumulative b 8.00)
  print $ complCumulative b 8.00
  print $ probability b 9 + probability b 10
