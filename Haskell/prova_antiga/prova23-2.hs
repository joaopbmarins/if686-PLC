fibonacci :: [Int]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)


type Pilha t = [t]
data Elemento = Valor Int | Soma | Multiplica deriving (Show)

exemploPilhaElem :: Pilha Elemento

exemploPilhaElem = [Valor 10, Valor 20, Soma, Valor 30, Multiplica]

geraString :: Pilha Elemento -> String
geraString [] = []
geraString ((Valor a):as) = show a ++ geraString as
geraString ((Soma):as) = "+"
geraString ((Multiplica):as) = "*"




-- exemplo de uso: gera_string exemploPilhaElem ——> "((10+20)*30)"