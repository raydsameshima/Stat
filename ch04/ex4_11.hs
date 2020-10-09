import Statistics.Distribution
import Statistics.Distribution.Beta

bt :: BetaDistribution
bt = betaDistr a b
       where
         a = 4.0
         b = 2.0

main = do
  putStrLn $ "at least 90 percent: " ++ show (complCumulative bt 0.9)

