-- ex 1.15 (1.4, 1.17)

import Data.Monoid ((<>))
import qualified Data.Vector as V

import Statistics.Sample.Histogram (histogram)
import Statistics.Sample (mean, varianceUnbiased, stdDev, range)

-- Top 40 stocks on the Over-The-Counter marked:
samples :: V.Vector Double
samples = V.fromList 
  [ 11.88,  6.27,  5.49,  4.81,  4.40,  3.78,  3.44,  3.11,  2.88,  2.68
  ,  7.99,  6.07,  5.26,  4.79,  4.05,  3.69,  3.36,  3.03,  2.74,  2.63
  ,  7.15,  5.98,  5.07,  4.55,  3.94,  3.62,  3.26,  2.99,  2.74,  2.62
  ,  7.13,  5.91,  4.94,  4.43,  3.93,  3.48,  3.20,  2.89,  2.69,  2.61
  ]

-- 1.2 histogram
hist :: (V.Vector Double, V.Vector Int)
hist = histogram 15 samples

main :: IO ()
main = do
  let (lowerBs, hs) = hist
  putStrLn $ "The lower bounds: " <> show lowerBs
  putStrLn $ "The histogram: " <> show hs

  let av = mean samples
      sd = stdDev samples
  putStrLn $ "The average value is: " <> show av <> " and the standard deviation is: " <> show sd

  let f k =
       V.length . V.filter (\x -> (av-k*sd)<x && x< (av+k*sd)) $ samples
  putStrLn $ "Our sample size is: " <> show (V.length samples)
  putStrLn $ "Within one sigma:   " <> show (f 1)
  putStrLn $ "Within two sigma:   " <> show (f 2)
  putStrLn $ "Within three sigma: " <> show (f 3)

  putStrLn $ "range/4 is:           " <> show (range samples / 4) 
  putStrLn $ "The average value is: " <> show av
