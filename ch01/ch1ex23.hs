-- ch1 ex.1.23

import Data.Monoid ((<>))

import Statistics.Distribution.Normal 
import qualified Statistics.Distribution as S

normalD :: NormalDistribution
normalD = normalDistr mean stdD
  where
    mean = 75
    stdD = 20

main :: IO () 
main = do
  -- ratio greater than 95 sec:
  putStrLn $ "the ratio of longer than 95 second: " 
          <> show (S.complCumulative normalD 95)
  
  putStrLn $ "Between 35 sec and 115 sec:         " 
          <> show ((S.complCumulative normalD 35) - (S.complCumulative normalD 115))

  putStrLn $ "more than 2 min:                    " 
          <> show (S.complCumulative normalD 120)
  


