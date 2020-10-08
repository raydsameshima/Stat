import Statistics.Distribution
import Statistics.Distribution.Normal

nd :: NormalDistribution
nd = normalDistr mean sd
     where
       mean = 75
       sd   = 10

main = do
  putStrLn $ "P(80<=Z<=90)= " ++ show (cumulative nd 90 - cumulative nd 80)
