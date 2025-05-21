main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])

maquinaSomar :: [Int] -> [Int]
maquinaSomar [] = []
maquinaSomar (a:as) = somar2 (a:as) 0 False False
    where
        somar2 :: [Int] -> Int -> Bool -> Bool -> [Int]
        somar2 [] b _ somou = if somou then [b] else []
        somar2 (a:as) b zero_sequencia somou
            | a /= 0 = somar2 as (b+a) False True
            | a == 0 && zero_sequencia == False = if somou then [b] ++ somar2 as 0 True False else [] ++ somar2 as 0 True False
            | a == 0 && zero_sequencia == True = if somou then [b] else []
            | otherwise = []
