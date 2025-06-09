main = do
    a <- getLine
    b <- getLine
    let result = logMes a b
    print result

logMes :: String -> String -> Double
logMes [] _ = 0.0
logMes _ [] = 0.0
logMes mes fatura = foldl (+) 0.0 (convDouble (separar fatura) mes)
    where
        separar :: String -> [String]
        separar [] = []
        separar (a:as)
            | a /= ';' = dividirEntre a (separar as)
            | a == ';' = [] : separar as

        dividirEntre :: Char -> [String] -> [String]
        dividirEntre letra [] = [[letra]]
        dividirEntre letra (a:as) = (letra:a) : as

        convDouble :: [String] -> String -> [Double]
        convDouble [] _ = []
        convDouble _ [] = []
        convDouble (a:b:c:as) mes
            | mes ==  mes_string a = (read c :: Double) : convDouble as mes
            | otherwise = 0.0 : convDouble as mes
                where
                    mes_string :: String -> String
                    mes_string (a:b:c:as) = as
