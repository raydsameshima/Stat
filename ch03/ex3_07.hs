-- ch03 example 3.7

import Statistics.Distribution
import Statistics.Distribution.Binomial

b :: BinomialDistribution
b = binomial 5 0.05

main = do
  putStrLn $ "If 5 samples is tested, the probabiliy of observing at least one defective: " 
          ++ show (1 - probability b 0)
