-- ex 1.13 (1.2)

import Statistics.Sample.Histogram (histogram)
import Statistics.Sample (mean, varianceUnbiased, stdDev)
import qualified Data.Vector as V

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
  print lowerBs
  print hs
  let av = mean samples
      sd = stdDev samples
  print "The average speed and the standard deviation are:"
  print av
  print sd

  let f k =
       V.length . V.filter id . V.map (\x -> (av-k*sd)<x && x< (av+k*sd)) $ samples
  print "Our sample size is 45:"
  print $ V.length samples
  print "Within one sigma:"
  print $ f 1
  print "Within two sigma:"
  print $ f 2
  print "Within three sigma:"
  print $ f 3

 
