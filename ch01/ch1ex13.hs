-- ex 1.13 (1.2, 1.17)

import Data.Monoid ((<>))
import qualified Data.Vector as V

import Statistics.Sample.Histogram (histogram)
import Statistics.Sample as S (mean, stdDev, range)

import Statistics.Distribution
import Statistics.Distribution.Normal
import Statistics.Distribution.Binomial

-- Average wind speeds for 45 us cities:
samples :: V.Vector Double
samples = V.fromList 
  [ 8.9,12.4, 8.6,11.3, 9.2, 8.8,35.1, 6.2, 7.0
  , 7.1,11.8,10.7, 7.6, 9.1, 9.2, 8.2, 9.0, 8.7
  , 9.1,10.9,10.3, 9.6, 7.8,11.5, 9.3, 7.9, 8.8
  , 8.8,12.7, 8.4, 7.8, 5.7,10.5,10.5, 9.6, 8.9
  ,10.2,10.3, 7.7,10.6, 8.3, 8.8, 9.5, 8.8, 9.4
  ]

-- 1.2 histogram
hist :: (V.Vector Double, V.Vector Int)
hist = histogram 20 samples

main :: IO ()
main = do
  let (lowerBs, hs) = hist
  putStrLn $ "The lower bounds: " <> show lowerBs
  putStrLn $ "The histogram: " <> show hs

  let av = S.mean samples
      sd = S.stdDev samples
  putStrLn $ "The average value is: " <> show av <> " and the standard deviation is: " <> show sd

  let f k =
       V.length . V.filter (\x -> (av-k*sd)<x && x< (av+k*sd)) $ samples
  putStrLn $ "Our sample size is: " <> show (V.length samples)
  putStrLn $ "Within one sigma:   " <> show (f 1)
  putStrLn $ "Within two sigma:   " <> show (f 2)
  putStrLn $ "Within three sigma: " <> show (f 3)

  putStrLn $ "range/4 is:           " <> show (S.range samples / 4) 
  putStrLn $ "The average value is: " <> show av
