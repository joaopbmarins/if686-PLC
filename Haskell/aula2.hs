vendas :: Int -> Int
vendas 0 = 200
vendas 1 = 500
vendas 2 = 900
vendas 3 = 1500
vendas 4 = 400
vendas 5 = 100
vendas outra_semana = 0

totalVendas :: Int -> Int
totalVendas n | n == 0 = vendas 0
              | otherwise = vendas n + totalVendas (n - 1)

maxVendas :: Int -> Int
maxVendas n | n == 0 = vendas 0
            | otherwise = max (maxVendas (n-1)) (vendas n)

maxiThree :: Int -> Int -> Int -> Int
maxiThree m n p = res
    where res = max (max m n) p

equalCount :: Int -> Int -> Int -> Int -> Int
equalCount mx x y z | x == mx && y == mx && z == mx = 3 
                    | (x == mx && y == mx) || (z == mx && y == mx) || (z == mx && x == mx) = 2
                    | x == mx || y == mx || z == mx = 1
                    | otherwise = 0

maxThreeOccours :: Int -> Int -> Int -> (Int, Int)
maxThreeOccours m n p = (mx, eqCount)
    where mx = maxiThree m n p
          eqCount = equalCount mx m n p

--------------------


ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo n = testaDivisores (n-1)
    where 
        testaDivisores :: Int -> Bool
        testaDivisores 1 = True
        testaDivisores x | mod n x /= 0 = testaDivisores (x-1)
                         | otherwise = False

primoSi :: Int -> Int -> Bool
primoSi n m = dividindo((min n m))
    where
        dividindo :: Int -> Bool
        dividindo 1 = True
        dividindo x | mod n x == 0 && mod m x == 0 = False
                    | otherwise = dividindo(x-1) 
