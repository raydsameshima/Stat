-- ch1 ex 1.35

import Data.Monoid ((<>))
import qualified Data.Vector as V

import Statistics.Sample.Histogram (histogram)
import Statistics.Sample (mean, varianceUnbiased, stdDev, range)

samples :: V.Vector Double
samples = V.fromList
  [ 172, 140, 123, 130, 115
  , 148, 108, 129, 137, 161
  , 123, 152, 133, 128, 142 
  ]

hist :: (V.Vector Double, V.Vector Int)
hist = histogram 8 samples

main = do
  putStrLn $ "the range/4:            " <> show (range samples / 4)

  let av = mean samples
      sd = stdDev samples

  putStrLn $ "the standard deviation: " <> show sd
  putStrLn $ "the mean value:         " <> show av

  let (bins, hs) = hist
  print bins
  print hs

  let f k = V.length . V.filter (\x -> (av-k*sd)<x && x< (av+k*sd)) $ samples
  putStrLn $ "the sample size:    " <> show (V.length samples)
  putStrLn $ "within one sigma:   " <> show (f 1)
  putStrLn $ "within two sigma:   " <> show (f 2)
  putStrLn $ "within three sigma: " <> show (f 3)

