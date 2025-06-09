main = do
    a <- getLine
    let result = minMaxCartao a
    print result

minMaxCartao :: String -> (Double, Double)  --- (min, Max)
minMaxCartao str = minmax (convDouble (separar str))
    where
        separar :: String -> [String]
        separar [] = []
        separar (a:as)
            | a /= ';' = dividirEntre a (separar as)
            | a == ';' = [] : separar as

        dividirEntre :: Char -> [String] -> [String]
        dividirEntre letra [] = [[letra]]
        dividirEntre letra (a:as) = (letra:a) : as

        convDouble :: [String] -> [Double]
        convDouble [] = []
        convDouble (a:b:c:as) = (read c :: Double) : convDouble as

        minmax :: [Double] -> (Double, Double)
        minmax [] = (9999999999999,-1)
        minmax (a:as) = (b,c)
            where 
                b = min a (fst (minmax as))
                c = max a (snd (minmax as))