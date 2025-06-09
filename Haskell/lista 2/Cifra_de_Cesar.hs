import Data.Char

main = do
    a <- getLine
    b <- getLine
    let result = cifraCesar (read a :: Int) b
    putStrLn result


cifraCesar :: Int -> String -> String
cifraCesar desl = map (charInt . toLower)
    where
        charInt :: Char -> Char
        charInt letra
            | letra <= 'z' && letra >= 'a' = chr (mod (ord letra - ord 'a' + desl) 26 + ord 'a')
            | otherwise = letra
