--                                             vamos testar apenas com inteiros
main = interact $ show . unzip' . (read :: String -> [(Int,Int)])

{-
unzip' :: [(a,b)] -> ([a],[b])
unzip' [] = ([],[])
unzip' ((a, b): xs) = (a:as, b:bs)
 where
   (as, bs) = unzip' xs 
-}

unzip' :: [(a,b)] -> ([a],[b])
unzip' = foldr (\(a,b) ~(as,bs) -> (a:as, b:bs)) ([],[])