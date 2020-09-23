-- ch1 ex 1.25

import Data.Monoid ((<>))
import qualified Data.Vector as V

import Statistics.Sample.Histogram (histogram)
import Statistics.Sample (mean, varianceUnbiased, stdDev, range)

samples :: V.Vector Double
samples = V.fromList
  [  16, 224,  16,  80,  96, 536, 400,  80
  , 392, 576, 128,  56, 656, 224,  40,  32
  , 358, 384, 256, 246, 328, 464, 448, 716
  , 304,  16,  72,   8,  80,  72,  56, 608
  , 108, 194, 136, 224,  80,  16, 424, 264  
  , 156, 216, 168, 184, 552,  72, 184, 240
  , 438, 120, 308,  32, 272, 152, 328, 480
  ,  60, 208, 340, 104,  72, 168,  40, 152
  , 360, 232,  40, 112, 112, 288, 168, 352
  ,  56,  72,  64,  40, 184, 264,  96, 224
  , 168, 168, 114, 280, 152, 208, 160, 176
  ]

hist :: (V.Vector Double, V.Vector Int)
hist = histogram 15 samples

main = do
  putStrLn $ "the range/4: " <> show (range samples / 4)

  let av = mean samples
      sd = stdDev samples

  putStrLn $ "the standard deviation: " <> show sd
  putStrLn $ "the mean value: " <> show av

  let (bins, hs) = hist
  print hs

  let f k = V.length . V.filter (\x -> (av-k*sd)<x && x< (av+k*sd)) $ samples
  putStrLn $ "the sample size:    " <> show (V.length samples)
  putStrLn $ "within one sigma:   " <> show (f 1)
  putStrLn $ "within two sigma:   " <> show (f 2)
  putStrLn $ "within three sigma: " <> show (f 3)

