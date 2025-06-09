import Data.Char

vendas :: Int -> Int
vendas 0 = 200
vendas 1 = 500
vendas 2 = 900
vendas 3 = 1500
vendas 4 = 400
vendas 5 = 100
vendas outra_semana = 0

totalVendas :: Int -> Int
totalVendas n | n == 0 = vendas 0
              | otherwise = vendas n + totalVendas (n - 1)

maxVendas :: Int -> Int
maxVendas n | n == 0 = vendas 0
            | otherwise = max (maxVendas (n-1)) (vendas n)

-- (++) :: String -> String -> String
-- Show :: ? -> String

addEspacos :: Int -> String
addEspacos n | n == 0 = ""
             | otherwise = addEspacos (n-1) ++ " "

paraDireita :: Int -> String -> String
paraDireita n str = addEspacos n ++ str

vendasNulas :: Int -> Bool
vendasNulas n = vendas n == 0

imprimeTabela :: Int -> IO()
imprimeTabela n = putStr (cabecalho
                  ++ imprimeSemanas n
                  ++ imprimeTotal n
                  ++ imprimeMedia n)

cabecalho :: String
cabecalho = "Semana" ++ addEspacos 3 ++ "Venda " ++ "\n"

imprimeSemanas :: Int -> String
imprimeSemanas n = imprimeSemana 0
    where
        imprimeSemana :: Int -> String
        imprimeSemana a | a == n = show a ++ addEspacos 9 ++ show (vendas a) ++ "\n"
                        | a < n = show a ++ addEspacos 9 ++ show (vendas a) ++ "\n" ++ imprimeSemana (a+1)

imprimeTotal :: Int -> String
imprimeTotal n = "Total" ++ addEspacos 5 ++ show (totalVendas n) ++ "\n"

imprimeMedia :: Int -> String
imprimeMedia n = "Média" ++ addEspacos 5 ++ show (calculaMedia n) ++ "\n"
    where
        calculaMedia :: Int -> Float
        calculaMedia n = fromIntegral (totalVendas n) / (fromIntegral n+1)
