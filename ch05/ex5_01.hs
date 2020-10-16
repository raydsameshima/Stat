-- ex5_01.hs

import Statistics.Distribution
import Statistics.Distribution.DiscreteUniform

y1, y2 :: DiscreteUniform
y1 = discreteUniform 3
y2 = discreteUniform 3

ss = [(i,j)
     | i <- [1..3], j <- [1..3]
     ]

ps = [(probability y1 i)*(probability y1 j)
     | i <- [1..3], j <- [1..3]
     ]

main = do
  putStrLn $ "The sample space is: " ++ show ss
  putStrLn $ "The corresponding probabilities: " ++ show ps
  putStrLn $ "sum ps = " ++ show (sum ps)


