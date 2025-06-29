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
editText str_og comand = editor str_og comand 0

editor :: String -> [Cmd] -> Int -> String
editor og [] _ = og
editor str_og ((Cursor passo):cx) posi_a = editor str_og cx (posi_a + passo)
editor str_og ((Backspace qtd):cx) posi_a = editor (apagar str_og posi_a qtd ++ cursor str_og posi_a) cx posi_a
editor str_og ((Delete qtd):cx) posi_a = editor (cursorR str_og posi_a ++ deletar str_og posi_a qtd) cx posi_a --cursorR str_og qtd ++ 
editor str_og ((Insert str):cx) posi_a = editor (inserir str_og posi_a str) cx (posi_a + length str)

inserir :: String -> Int -> String -> String
inserir str_og posi str = cursorR str_og posi ++ str ++ cursor str_og posi

deletar :: String -> Int -> Int -> String
deletar [] _ _ = []
deletar (a:as) posi_a qtd
       | posi_a >= 0 = deletar (cursor (a:as) posi_a) (-1) qtd
       | posi_a == -1 && qtd > 0 = deletar as (-1) (qtd-1)
       | otherwise = a:as

apagar :: String -> Int -> Int -> String
apagar [] _ _ = []
apagar (a:as) posi_a qtd
       | posi_a >= 0 = apagar (cursorR (a:as) posi_a) (-1) qtd
       | posi_a == -1 = apagar (init (a:as)) (-1) (qtd-1)
       | otherwise = a:as

cursor :: String -> Int -> String
cursor [] _ = []
cursor (a:as) qtd
       | qtd > 0 = cursor as (qtd-1)
       | otherwise = a:as

cursorR :: String -> Int -> String
cursorR [] _ = []
cursorR (a:as) qtd
       | qtd > 0 = a : cursorR as (qtd-1)
       | otherwise = []




