import Statistics.Distribution -- (mean, stdDev)
import Statistics.Distribution.Gamma

gd :: GammaDistribution
gd = gammaDistr a b
       where
         a = 3.1 -- shape parameter k 
         b = 2.0 -- scale parameter theta

m = mean gd
s = stdDev gd

main = do
  putStrLn $ "The mean is: " ++ show m ++ " and the standard deviation: " ++ show s
  let k = (22.5 - m)/s
  putStrLn $ "k-value is: " ++ show k
  putStrLn $ "P( Y>22.5)= " ++ show (complCumulative gd 22.5)
  let tchebycheff = 1/k^2
  putStrLn $ "Using Tchebysheff's theorem, P( |Y-m|> " ++ show k ++ "*s ) <= 1/k^2 = " ++ show tchebycheff
