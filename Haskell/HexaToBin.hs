main = do
    s <- getLine
    let result = htob s
    print result
    
htob :: String -> String
htob [] = []
htob (a:as) = bin a ++ htob as
    where 
        bin :: Char -> String
        bin c
            | c == '0' = "0000"
            | c == '1' = "0001"
            | c == '2' = "0010"
            | c == '3' = "0011"
            | c == '4' = "0100"
            | c == '5' = "0101"
            | c == '6' = "0110"
            | c == '7' = "0111"
            | c == '8' = "1000"
            | c == '9' = "1001"
            | c == 'A' = "1010"
            | c == 'B' = "1011"
            | c == 'C' = "1100"
            | c == 'D' = "1101"
            | c == 'E' = "1110"
            | c == 'F' = "1111"
