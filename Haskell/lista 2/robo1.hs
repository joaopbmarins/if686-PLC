main = do
       a <- getLine
       b <- getLine
       let result = destination (read a) (read b)
       print result

data Command = Forward Int | Backward Int | TurnLeft | TurnRight 
               deriving (Eq, Show, Read)

destination :: (Int,Int) -> [Command] -> (Int,Int)  
destination (x,y) comando = destinationAux (x,y) comando 'N'
    where
        destinationAux :: (Int, Int) -> [Command] -> Char -> (Int, Int)
        destinationAux (x,y) [] _ = (x,y) 
        destinationAux (x,y) (Forward vezes:xs) 'N' = destinationAux (x,y+vezes) xs 'N'
        destinationAux (x,y) (Backward vezes:xs) 'N' = destinationAux (x,y-vezes) xs 'N'
        destinationAux (x,y) (TurnLeft:xs) 'N' = destinationAux (x,y) xs 'O'
        destinationAux (x,y) (TurnRight:xs) 'N' = destinationAux (x,y) xs 'L'
        destinationAux (x,y) (Forward vezes:xs) 'O' = destinationAux (x-vezes,y) xs 'O'
        destinationAux (x,y) (Backward vezes:xs) 'O' = destinationAux (x+vezes,y) xs 'O'
        destinationAux (x,y) (TurnLeft:xs) 'O' = destinationAux (x,y) xs 'S'
        destinationAux (x,y) (TurnRight:xs) 'O' = destinationAux (x,y) xs 'N'
        destinationAux (x,y) (Forward vezes:xs) 'L' = destinationAux (x+vezes,y) xs 'L'
        destinationAux (x,y) (Backward vezes:xs) 'L' = destinationAux (x-vezes,y) xs 'L'
        destinationAux (x,y) (TurnLeft:xs) 'L' = destinationAux (x,y) xs 'N'
        destinationAux (x,y) (TurnRight:xs) 'L' = destinationAux (x,y) xs 'S'
        destinationAux (x,y) (Forward vezes:xs) 'S' = destinationAux (x,y-vezes) xs 'S'
        destinationAux (x,y) (Backward vezes:xs) 'S' = destinationAux (x,y+vezes) xs 'S'
        destinationAux (x,y) (TurnLeft:xs) 'S' = destinationAux (x,y) xs 'L'
        destinationAux (x,y) (TurnRight:xs) 'S' = destinationAux (x,y) xs 'O'
