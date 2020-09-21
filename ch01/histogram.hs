-- https://stackoverflow.com/a/48212667 
import qualified Statistics.Sample.Histogram as S
import qualified Data.Vector as V

main :: IO ()
main = do
    let xs = V.fromList [2.1, 2.4, 2.2, 2.3, 2.7, 2.5, 2.4, 2.6, 2.6, 2.9]
        bins = 5
        lowerBound = 2.05
        upperBound = 3.05
        hist = S.histogram_ bins lowerBound upperBound xs
    print $ V.toList hist
