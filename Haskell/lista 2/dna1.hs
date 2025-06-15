data Tree t = Node t (Tree t) (Tree t) | Nilt
  deriving (Read, Show)

main :: IO ()
main = do
  input <- getLine
  let result = dna1 (read input :: Tree Int)
  print result




dna1 :: Tree Int -> [String]
dna1 t = separar8 (collapse t) 0

separar8 :: String -> Int -> [String]
separar8 [] _ = []
separar8 (a:as) count
    | count < 8 = separar8Aux a (separar8 as (count+1))
    | otherwise = [] : separar8Aux a (separar8 as 1)

separar8Aux :: Char -> [String] -> [String]
separar8Aux letra [] = [[letra]]
separar8Aux letra (a:as) = (letra:a) : as

collapse :: Tree Int -> [Char]
collapse Nilt = []
collapse (Node t l r) = collapse l ++ [converter t] ++ collapse r

converter :: Int -> Char
converter t
    | mod t 5 == 0 = 'E'
    | mod t 5 == 1 = 'M'
    | mod t 5 == 2 = 'A'
    | mod t 5 == 3 = 'C'
    | mod t 5 == 4 = 'S'
