import Statistics.Distribution
import Statistics.Distribution.Normal

nd :: NormalDistribution
nd = normalDistr 0.0 1.0

main = do
  putStrLn $ "P( 2< Z) =      " ++ show (complCumulative nd 2)
  putStrLn $ "P(-2<=Z<=2)=    " ++ show (cumulative nd 2 - cumulative nd (-2))
  putStrLn $ "P( 0<=Z<=1.73)= " ++ show (cumulative nd 1.73 - cumulative nd 0)
