import Data.Char
main = do
    sentence_1 <- getLine
    sentence_2 <- getLine
    let result = uncommonFromTwoSentences sentence_1 sentence_2
    print result

uncommonFromTwoSentences :: String -> String -> [String]
uncommonFromTwoSentences str1 str2 = removendo (qSort (iterar lista1 lista2 ++ iterar lista2 lista1))
    where
        lista1 = separar (map toLower str1)
        lista2 = separar (map toLower str2)

qSort :: [String] -> [String]
qSort [] = []
qSort (x:xs) = qSort [y | y <- xs, y < x] ++ [x] ++ qSort [y | y <- xs, y >= x]

comparar :: String -> [String] -> Bool
comparar [] _ = False
comparar _ [] = False
comparar a (b:bs)
    | a == b = True
    | otherwise = comparar a bs


iterar :: [String] -> [String] -> [String]
iterar [] _ = []
iterar _ [] = []
iterar (a:as) (b:bs)
    | comparar a (b:bs) = iterar as (b:bs)
    | otherwise = a : iterar as (b:bs)

removendo :: [String] -> [String]
removendo [] = []
removendo (a:as)
    | comparar a as = removendo (removendoDuplicatas as a)
    | otherwise = a : removendo as

removendoDuplicatas :: [String] -> String -> [String]
removendoDuplicatas [] _ = []
removendoDuplicatas a [] = a
removendoDuplicatas (a:as) b
    | a == b = removendoDuplicatas as b
    | otherwise = a : removendoDuplicatas as b

separar :: String -> [String]
separar [] = []
separar (a:as)
    | a /= ' ' = dividirEntre a (separar as)
    | a == ' ' = [] : separar as

dividirEntre :: Char -> [String] -> [String]
dividirEntre letra [] = [[letra]]
dividirEntre letra (a:as) = (letra:a) : as