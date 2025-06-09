main = do
    a <- getLine
    b <- getLine
    c <- getChar
    let result = isReplica a (read b) c
    print result

isReplica :: String -> Int -> Char -> Bool
isReplica [] qtd letra = qtd == 0
isReplica (a:as) qtd letra
    | a == letra = isReplica as (qtd-1) letra
    | otherwise = False
