-- ch1 ex. 1.3

import Statistics.Sample.Histogram (histogram)
import Statistics.Sample (mean, varianceUnbiased, stdDev, range)
import qualified Data.Vector as V

-- uranium 258 in soil (picocuries per gram)
samples :: V.Vector Double
samples = V.fromList 
  [ 0.74, 6.47, 1.90, 2.69, 0.75
  , 0.32, 9.99, 1.77, 2.41, 1.96
  , 1.66, 0.70, 2.42, 0.54, 3.36
  , 3.59, 0.37, 1.09, 8.32, 4.06
  , 4.55, 0.76, 2.03, 5.70,12.48
  ]

hist :: (V.Vector Double, V.Vector Int)
hist = histogram 8 samples



main :: IO ()
main = do
  let (lowerBs, hs) = hist
  print lowerBs
  print hs
  let av = mean samples
      sd = stdDev samples
  print "The average speed and the standard deviation are:"
  print av
  print sd

  print "The range/4 is:"
  print (range samples / 4)
 



