-- ch3 example 3.16

import Statistics.Distribution
import Statistics.Distribution.Hypergeometric

h :: HypergeometricDistribution
h = hypergeometric m l k
  where
    m =  5 --      r
    l = 20 --        N of population size
    k = 10 --          n of samplie size
--                     k elements chosen from
--                   l population, with
--                 m elements of one type and (l-m) of the other  

main :: IO ()
main = do
  putStrLn "Among 20, 10 are randomely selected from; what is the probability that the 10 include 5 best."
  putStrLn $ "The syntax is m=r, l=N, k=r, y=k and:"
  putStrLn $ "p 5 = " ++ show (probability h 5)


