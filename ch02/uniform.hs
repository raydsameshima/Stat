-- figure 2.1

import qualified Data.Vector as V

import Statistics.Sample
import Statistics.Sample.Histogram (histogram)


dice :: V.Vector Double
dice = V.fromList [1,2,3,4,5,6]

main = do
  putStrLn $ "the range: " ++ show (range dice)
  putStrLn $ "the mean:  " ++ show (mean dice)
  putStrLn $ "the harmonic mean, which is defined by 6 / (sum $ map (1/) [1..6]): " ++ show (harmonicMean dice)
  putStrLn $ "the standard deviation: " ++ show (stdDev dice)


  let (bs,hs) = histogram 6 dice
  putStrLn $ "the histogram is of course uniform: " ++ show (hs :: V.Vector Int)
  putStrLn $ "the (lower) boundaries: " ++ show bs
