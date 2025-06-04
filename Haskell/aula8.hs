--data Bool = True | False
data Estacao = Inverno | Verao | Outono | Primavera
    deriving (Show, Eq)
data Temp = Frio | Quente
    deriving (Show, Eq)

clima :: Estacao -> Temp
clima Inverno = Frio
clima _ = Quente

type Nome = String
type Idade = Int
data Pessoas = Pessoa Nome Idade

lista_de_pessoas :: [Pessoas]
lista_de_pessoas = [Pessoa "Jose" 22, Pessoa "Maria" 23]

lista1_de_pessoas :: [(Nome, Idade)]
lista1_de_pessoas = [("Jose", 22), ("Maria", 23)]


showPerson :: Pessoas -> String
showPerson (Pessoa n a) = n ++ " -- " ++ show a

-- Pessoa :: Nome -> Idade -> Pessoas

data Shape = Circle Float | Rectangle Float Float | Square Float
    deriving(Show)

--Circle 4.9 :: Shape
--Rectangle 4.2 2.0 :: Shape

isRound :: Shape -> Bool
isRound (Circle _) = True
isRound (Rectangle _ _) = False
isRound (Square _) = False

area :: Shape -> Float
area (Circle r) = pi * r^2
area (Rectangle a b) = a * b
area (Square l) = l*l  

testeShape :: [Shape]
testeShape = [Circle 2.1, Square 3.2]

data Expr = Lit Int
            | Add Expr Expr
            | Sub Expr Expr

eval :: Expr -> Int
eval (Lit n) = n
eval (Add e1 e2) = (eval e1) + (eval e2)
eval (Sub e1 e2) = (eval e1) - (eval e2)

myShow :: Expr -> String
myShow (Lit n) = show n
myShow (Add e1 e2) = "(" ++ (myShow e1) ++ " + " ++ (myShow e2) ++ ")"
myShow (Sub e1 e2) = "(" ++ (myShow e1) ++ " - " ++ (myShow e2) ++ ")"

data Pairs t = Pair t t
{-
Pair 6 8 :: Pair Int
Pair True True = Pair Bool
Pair [] [1,3] :: Pair [Int]
-}

data List t = Nil | Cons t (List t)

data Tree t = Nilt
                | Node t (Tree t) (Tree t)
                deriving (Eq, Show)

data Either a b = Left a | Right b

data Maybe a = Nothing | Just a

toList :: List t -> [t]
toList Nil = []
toList (Cons a b) = a : toList b

fromList :: [t] -> List t
fromList [] = Nil
fromList (a:as) = Cons a (fromList as)

depth :: Tree t -> Int
depth Nilt = 0
depth (Node t l r) = 1 + max (depth l) (depth r) 

collapse :: Tree t -> [t]
collapse Nilt = []
collapse (Node t l r) = collapse l ++ [t] ++ collapse r

mapTree :: (t -> u) -> Tree t -> Tree u
mapTree _ Nilt = Nilt
mapTree func (Node t l r) = Node (func t) (mapTree func l) (mapTree func r)
