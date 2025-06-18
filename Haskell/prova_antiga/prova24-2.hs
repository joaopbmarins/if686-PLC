insert :: Int -> [Int] -> [Int]
insert _ [] = []
insert num (a:as)
    | a <= num =  a : insert num as
    | a > num = num : a : as


ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo 2 = True
ehPrimo num = ehPrimoAux num (num-1)
    where
        ehPrimoAux :: Int -> Int -> Bool
        ehPrimoAux _ 1 = True
        ehPrimoAux a b
            | mod a b /= 0 = ehPrimoAux a (b-1)
            | otherwise = False

sumPrimeSquares1 :: Int -> Int -> Int
sumPrimeSquares1 a b = foldr1 (+) (map (\x -> x*x) (filter ehPrimo [a .. b]))

sumPrimeSquares2 :: Int -> Int -> Int
sumPrimeSquares2 a b = foldr1 (+) [x*x | x <- [a..b], ehPrimo x]

data Tree = No Int Tree Tree | Folha Int 
    deriving Show

teste1 = No 50 (No 25 (No 12 (Folha 6) (Folha 13)) (No 30 (Folha 26) (Folha 32))) (Folha 59)
teste2 = No 100 teste1 (No 200 (Folha 99) (No 298 (Folha 297) (Folha 299)))

ordenada :: Tree -> Bool
ordenada t = ordenadoI (inOrder t) 
    where
        inOrder :: Tree -> [Int]
        inOrder (No a t1 t2) = inOrder t1 ++ [a] ++ inOrder t2
        inOrder (Folha a) = [a] 

        ordenadoI :: [Int] -> Bool
        ordenadoI [] = True
        ordenadoI [a] = True
        ordenadoI (a:b:as) = a < b && ordenadoI (b:as) 

