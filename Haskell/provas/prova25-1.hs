{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}
import Data.Char
{-
Aluno: João Pedro Barbosa Marins
jpbm ec 25.1 PLC
-}

--Q1
type Chave = [(Char, Char)]
letras :: [Char]
letras = ['A' .. 'Z']

cria_chave :: Int -> Chave
cria_chave avanc = [(a, chr (mod (ord a + avanc - ord 'A') 26 + ord 'A')) | a <- letras]

------------------------
--Q2

crypt :: Chave -> String -> String
crypt _ [] = []
crypt cripta (a:as) = pecorreStr a cripta : crypt cripta as

pecorreStr :: Char -> Chave -> Char
pecorreStr orginal [] = orginal
pecorreStr letra ((a,b):xs)
    | a == letra = b
    | otherwise = pecorreStr letra xs

---------------------------------
--Q3

data ChaveTree = Node Char Char ChaveTree ChaveTree | Leaf
    deriving (Show)

chave_parcial :: ChaveTree
chave_parcial = Node 'I' 'L' (Node 'A' 'D' Leaf
                                            (Node 'E' 'X' Leaf Leaf))
                                            (Node 'L' 'O' Leaf Leaf)

cryptT :: ChaveTree -> String -> String
cryptT _ [] = ""
cryptT Leaf _ = ""
cryptT arvore (a:as) = pecorreArvore arvore a : cryptT arvore as

pecorreArvore :: ChaveTree -> Char -> Char
pecorreArvore Leaf og = og
pecorreArvore (Node a b n1 n2) c
    | a == c = b
    | a < c = pecorreArvore n2 c
    | a > c = pecorreArvore n1 c

{-
//Versão da 3ª questão com busca linear (seria uma resposta incorreta)
cryptT :: ChaveTree -> String -> String
cryptT _ [] = ""
cryptT Leaf _ = "" 
cryptT arvore (a:as) = [pecorreStr a cripta] ++ (cryptT arvore as)
    where 
        cripta = pecorreArvore arvore

pecorreArvore :: ChaveTree -> Chave
pecorreArvore Leaf = []
pecorreArvore (Node a b n1 n2) = pecorreArvore n1 ++ [(a,b)] ++ pecorreArvore n2
-}

---------------------
--Q4

conta_folhas :: ChaveTree -> Int
conta_folhas Leaf = 1
conta_folhas (Node a b n1 n2) = conta_folhas n1 + 0 + conta_folhas n2


