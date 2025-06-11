data Tree t = Nilt |
              Node t (Tree t) (Tree t)
              deriving (Read)


main = do
       s <- getLine
       let result = isBST (read s::Tree Int)
       print result


isBST :: Ord t => Tree t -> Bool
isBST Node t = isSorted (collapse t)



collapse :: Tree t -> [t]
collapse Nilt = []
collapse (Node t l r) = collapse l ++ [t] ++ collapse r

isSorted :: [Int] -> Bool
isSorted [] = True
isSorted [x] = True
isSorted (a:b:xs) = a < b && isSorted (b:xs)
