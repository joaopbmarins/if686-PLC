

add2 :: Int -> Int
add2 = succ . succ

twice :: (t -> t) -> (t -> t)
twice f = f . f


iter :: Int -> (t -> t) -> (t -> t)
iter 0 f = id
iter n f = (iter (n-1) f) . f

addOne x = x + 1

-- notação lambda
-- \x -> x + 1
-- map(\x -> x + 1) [1,2,3]

addNum :: Int -> (Int -> Int)
addNum n = h
    where
    h m = n + m

-- notação lambda
-- \m -> n + m
-- addNum n = (\m -> n+m)

multiply :: Int -> Int -> Int
multiply a b = a*b

doubleList :: [Int] -> [Int]
doubleList = map (multiply 2)


whiteSpace = " "
--elem :: Char -> [Char] -> Bool
--elem ch whiteSpace 
-- \ch -> elem ch whiteSpace
-- filter (\ch -> not(elem ch whiteSpace))

soma = \x -> (\y -> x + y)

sumPrimeSquare1 :: Int -> Int -> Int
sumPrimeSquare1 a b = foldr1 (+) (map (\x -> x*x) (filter ehPrimo [a..b]))

ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo n = testaDivisores (n-1)
    where
        testaDivisores :: Int -> Bool
        testaDivisores 1 = True
        testaDivisores x | mod n x /= 0 = testaDivisores (x-1)
                         | otherwise = False
