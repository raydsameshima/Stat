-- ch03 example 3.9

import Statistics.Distribution
import Statistics.Distribution.Binomial

b :: BinomialDistribution
b = binomial 20 0.05

main = do
  putStrLn $ "P(Y>=4) is given by 1-P(Y<=3): " ++ show (1 - cumulative b 3.00)
