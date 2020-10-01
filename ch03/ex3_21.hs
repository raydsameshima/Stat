-- example 3.21

import Statistics.Distribution
import Statistics.Distribution.Binomial
import Statistics.Distribution.Poisson

bi = binomial n p
  where 
    n = 20   -- trials
    p =  0.1 -- probability

pd = poisson l
  where
    l = n*p
    n = 20
    p =  0.1

main = do
  putStrLn $ "with binomial, P(X<=3):              " ++ show (cumulative bi 3.0)
  putStrLn $ "with poisson approximation, P(X<=3): " ++ show (cumulative pd 3.0)
