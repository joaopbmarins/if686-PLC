
data Animal = Cisnal | Iguanoide | Narvale | Null
  deriving (Eq, Show)

main = do
  firstExtract <- words <$> getLine                       -- equivalente a (read firstExtract :: [String])
  secondExtract <- words <$> getLine
  let result = dna2 firstExtract secondExtract
  print result

dna2 :: [String] -> [String] -> [Int]
dna2 [] _ = [0,0,0]
dna2 _ [] = [0,0,0]
dna2 str1 str2 = triplaLista (foldr1 sum3 (map tripla (chamaStrings str1 str2)))

chamaStrings :: [String] -> [String] -> [Float]
chamaStrings [] _ = [0.0]
chamaStrings _ [] = [0.0]
chamaStrings (a:as) (b:bs) = probabilidadeE a b : chamaStrings as bs

tripla :: Float -> (Int, Int, Int)
tripla i
  | i >= 0.1 && i <= 0.3  = (a+1,b,c)
  | i >= 0.4 && i <= 0.7  = (a,b+1,c)
  | i >= 0.8 = (a,b,c+1)
  | otherwise = (a,b,c)
  where
    a = 0
    b = 0
    c = 0

sum3 :: (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)
sum3 (x1, x2, x3) (y1, y2, y3) = (x1 + y1, x2 + y2, x3 + y3)

triplaLista :: (Int, Int, Int) -> [Int]
triplaLista (a,b,c) = [a,b,c]

probabilidadeE :: String -> String -> Float
probabilidadeE str1 str2 = produtoVetorial str1 str2 / max (fromIntegral (length str1)) (fromIntegral (length str2))

produtoVetorial :: String -> String -> Float
produtoVetorial [] _ = 0.0
produtoVetorial _ [] = 0.0
produtoVetorial (a:as) (b:bs)
    | a == b = 1.0 + produtoVetorial as bs
    | otherwise = 0.0 + produtoVetorial as bs
