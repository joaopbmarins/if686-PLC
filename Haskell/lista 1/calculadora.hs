main = do
    a <- getLine
    let result = executa (read a)
    print result

type Comando = String
type Valor = Int

executa :: [(Comando, Valor)] -> Int
executa [] = 0
executa a = calcular a 0
    where 
        calcular :: [(Comando, Valor)] -> Int -> Int
        calcular [] valor_anterior = valor_anterior 
        calcular ((a,b):as) valor_anterior
            | a == "Multiplica" = calcular as (valor_anterior * b)
            | a == "Soma" = calcular as (valor_anterior + b)
            | a == "Subtrai" = calcular as (valor_anterior - b)
            | a == "Divide" && b /= 0 = calcular as (div valor_anterior b)
            | a == "Divide" && b == 0 = -666