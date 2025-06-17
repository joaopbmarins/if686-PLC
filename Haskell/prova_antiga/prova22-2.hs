import Data.Char

rlencode0 :: [Int] -> [Int]
rlencode0 [] = []
rlencode0 (a:as) = encondificandoI (a:as) 0

encondificandoI :: [Int] -> Int -> [Int]
encondificandoI [] _ = []
encondificandoI (a:as) count
    | a == 0 = encondificandoI as (count+1)
    | a /= 0 && count > 0 = 0 : count : a :encondificandoI as 0
    | otherwise = a : encondificandoI as 0

rldecode0 :: [Int] -> [Int]
rldecode0 [] = []
rldecode0 (a:as) = decodificandoI (a:as) 0

decodificandoI :: [Int] -> Int -> [Int]
decodificandoI [] _ = []
decodificandoI (a:as) count
    | a == 0 = decodificandoI as (-1)
    | a /= 0 && count == -1 = decodificandoI as a
    | a /= 0 && count > 0 = 0 : decodificandoI (a:as) (count - 1)
    | a /= 0 && count == 0 = a : decodificandoI as 0 

rlencodeLetras :: String -> String
rlencodeLetras [] = []
rlencodeLetras (a:as) = encondificandoS (a:as) '0' 0

encondificandoS :: String -> Char -> Int -> String
encondificandoS [] _ _ = []
encondificandoS (a:as) ult_letra count
    | a == ult_letra = encondificandoS as a (count + 1)
    | a /= ult_letra && count > 0 = show (count + 1) ++ a : encondificandoS as a 0
    | a /= ult_letra && count == 0 = a : encondificandoS as a 0

rldecodeLetras :: String -> String
rldecodeLetras (a:as) = decodificandoS (a:as) '0' 0

decodificandoS :: String -> Char -> Int -> String
decodificandoS [] _ _ = []
decodificandoS (a:as) ult_letra count
    | count > 1 = ult_letra : decodificandoS (a:as) ult_letra (count - 1)
    | a <= '9' && a >= '0' = decodificandoS as ult_letra (ord a - ord '0')
    | otherwise = a : decodificandoS as a 0
