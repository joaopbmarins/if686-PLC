data Cmd = Cursor Int
           | Backspace Int
           | Delete Int
           | Insert String
           deriving (Read)

main = do
       a <- getLine
       b <- getLine
       let result = editText a (read b)
       print result


editText :: String -> [Cmd] -> String
