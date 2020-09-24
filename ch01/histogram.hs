-- ch1 figure 1.1
-- https://stackoverflow.com/a/48212667 

import Data.Monoid ((<>))
import qualified Statistics.Sample.Histogram as S
import qualified Data.Vector as V


xs :: V.Vector Double
xs = V.fromList [2.1, 2.4, 2.2, 2.3, 2.7, 2.5, 2.4, 2.6, 2.6, 2.9]

hs :: V.Vector Int
hs = S.histogram_ bins lowerBound upperBound xs
  where
    bins = 5
    lowerBound = 2.05
    upperBound = 3.05

main :: IO ()
main = do
   putStrLn $ "Let us show the histgram, which corresponds to Figure1.1:"
   putStrLn $ "The date is:           " <> show xs
   putStrLn $ "The number of smple is " <> show (V.length xs)
   putStrLn $ "The histogram is:      " <> show hs
