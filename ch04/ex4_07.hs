import Statistics.Distribution.Uniform
import Statistics.Distribution

ud :: UniformDistribution
ud = uniformDistr 0.0 30.0

main = do
  putStrLn $ "the probability that the customer arrived within the very last 5 min:" 
          ++ show (cumulative ud 30 - cumulative ud 25)
  putStrLn $ "this is 1/6: " ++ show (1/6)
