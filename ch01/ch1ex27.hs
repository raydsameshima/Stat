-- ch1 ex 1.27

import Data.Monoid ((<>))
import Statistics.Distribution.Normal 

import Statistics.Distribution ( cumulative )

normalD :: NormalDistribution
normalD = normalDistr mean stdD
  where
    mean = 72
    stdD = 8

sampleSize = 340

main = do
  let f low high = (cumulative normalD high) - (cumulative normalD low)
      f1 = f 64 80

  putStrLn $ "The percentage: " <> show f1
  putStrLn $ "The number of students in the range [64, 80] is approximately: " <> show (sampleSize * f1)

  let f2 = f 56 88

  putStrLn $ "The percentage: " <> show f2
  putStrLn $ "The number of students in the range [56, 88] is approximately: " <> show (sampleSize * f2)


