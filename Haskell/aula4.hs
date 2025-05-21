intP :: (Int, Int)
intP = (33,43)

-- (True, 'x') :: (Bool, Char)
-- (34, 22, 'b') :: (Int, Int, Char)

addPair :: (Int, Int) -> Int
addPair (x,y) = x+y

shift :: ((Int, Int), Int) -> (Int,(Int, Int))
shift ((x,y),z) = (x,(y,z))

type Name = String
type Age = Int
type Phone = Int
type Person = (Name, Age, Phone)

name :: Person -> Name
name (n,a,p) = n

oneRoot :: Float -> Float -> Float -> Float
oneRoot a b c =-b/(2.0*a)

twoRoots :: Float -> Float -> Float -> (Float, Float)
twoRoots a b c = (d-e, d+e)
    where
        d =-b/(2.0*a)
        e = sqrt (b^2-4.0*a*c)/(2.0*a)

roots :: Float -> Float -> Float -> String
roots a b c
    | b^2 == 4.0*a*c = show (oneRoot a b c)
    | b^2 > 4.0*a*c = show f ++ " " ++ show s
    | otherwise = "no roots"
        where (f,s) = twoRoots a b c


menorMaior :: Int -> Int -> Int -> (Int, Int)
menorMaior a b c = (min (min a b) c, max (max a b) c)

-- ordenaTripla :: (Int, Int , Int) -> (Int, Int , Int)
-- ordenaTripla (a,b,c) 

sumList :: [Int] -> Int
sumList [] = 0
sumList (a:as) = a + sumList as

double :: [Int] -> [Int]
double [] = []
double (a:as) = (a*2:double as)

member :: [Int] -> Int -> Bool
member [] b = False
member (a:as) b
    | a == b = True
    | otherwise = member as b

digits :: String -> String
digits [] = ""
digits (a:as)
    | ('0' <= a && a <= '9') = (a: digits as)
    | otherwise = digits as

sumPairs :: [(Int, Int)] -> [Int]
sumPairs [] = []
sumPairs ((a,b):as) = (a+b : sumPairs as)
