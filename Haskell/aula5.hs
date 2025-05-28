{-
digits :: String -> String
digits [] = ""
digits (a:as)
    | ('0' <= a && a <= '9') = (a: digits as)
    | otherwise = digits as
-}

firstDigit :: String -> Char
firstDigit st = case (digits st) of
                    [] -> '\0'
                    (a:as) -> a
{-ja existem
length :: [t] -> Int
length [] = 0
length (a:as) = 1 + length as

reverse :: [t] -> [t]
reverse [] = []
reverse (a:as) = reverse as ++ [a]
-}

doubleList xs = [2*a | a <- xs]
doubleIfEven xs = [2*a | a <- xs, even a]

sumPair :: [(Int, Int)] -> [Int]
sumPair lp = [a+b | (a,b) <- lp]

digits :: String -> String
digits st = [ch | ch <- st, isDigit ch]

isDigit :: Char -> Bool
isDigit a = '0' <= a && a <= '9'

qSort :: [Int] -> [Int]
qSort [] = []
qSort (x:xs) =
        qSort [y | y <- xs, y < x] ++
        [x] ++
        qSort [y | y <- xs, y >= x]


----------------------

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)


applyNtimes :: (a -> a) -> a -> Int -> a
applyNtimes f x 0  = f x
applyNtimes f x n = applyNtimes f x (n-1)

total :: (Int->Int) -> Int -> Int
total f 0 = f 0
total f n = total f (n-1) + f n

--totalVendas n = total vendas n

sumSquares :: Int -> Int
sumSquares n = total sq n

sq x = x * x

maxFun :: (Int -> Int) -> Int -> Int
maxFun f 0 = f 0
maxFun f n = max (maxFun f (n-1)) (f n)

isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f 0 = True
isCrescent f n = f n >= f (n-1) && (isCrescent f (n-1))

{-
isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f 0 = True
isCrescent f n
            | f n >= f (n-1) = isCrescent f (n-1)
            | otherwise = False
-}

times2 :: Int -> Int
times2 n = 2 * n

sqr :: Int -> Int
sqr x = x * x

{-essa funcao ja existe
map :: (t -> u) -> [t] -> [u]
map f [] = []
map f (a:as) = f a : map f as
-}

