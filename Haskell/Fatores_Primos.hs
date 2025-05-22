main = do
      a <- getLine
      let result = fatPrime (read a :: Int)
      print result

fatPrime :: Int -> [(Int, Int)]
fatPrime num = contadorDivisores num (filtraPrimos (descobreFator num 2)) 0
    where
        descobreFator :: Int -> Int -> [Int]
        descobreFator _ 1 = []
        descobreFator num a
            | a > num = []
            | mod num a == 0 = a:descobreFator num (a+1)
            | mod num a /= 0 = descobreFator num (a+1)

        filtraPrimos :: [Int] -> [Int]
        filtraPrimos [] = []
        filtraPrimos (a:as)
            | descobreFator a 2 == [a] = a:filtraPrimos as
            | otherwise = filtraPrimos as 

        contadorDivisores :: Int -> [Int] -> Int -> [(Int, Int)]
        contadorDivisores _ [] _ = []
        contadorDivisores base (a:as) contador
            | mod base a == 0 = contadorDivisores (div base a) (a:as) (contador+1)
            | otherwise = (a,contador) : contadorDivisores base as 0
