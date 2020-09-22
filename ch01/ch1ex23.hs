-- ch1 ex.1.23

import Statistics.Distribution.Normal 
import qualified Statistics.Distribution as S

normalD :: NormalDistribution
normalD = normalDistr mean stdD
  where
    mean = 75
    stdD = 20


main :: IO () 
main = do
  print "the ratio of longer than 95 second:"
  -- the ratio greater than 95 sec:
  print $ S.complCumulative normalD 95

  print "Between 35 sec and 115 sec:"
  print $ (S.complCumulative normalD 35) - (S.complCumulative normalD 115)
  print $ (S.cumulative normalD 115) - (S.cumulative normalD 35)

  print "more than 2 min:" 
  print $ S.complCumulative normalD 120
  


