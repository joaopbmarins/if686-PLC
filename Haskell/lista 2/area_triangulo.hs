type Ponto = (Int, Int)
type Area = Double

data Triangulo = Triangulo Ponto Ponto Ponto
    deriving (Eq, Show, Read)

main = do
    trg <- getLine
    let area = areaTriangulo (read trg :: Triangulo)
    print area

areaTriangulo :: Triangulo -> Area
areaTriangulo (Triangulo (xa,ya) (xb,yb) (xc,yc)) = fromIntegral (abs d) / 2
    where
        d = xa* yb + ya*xc + xb*yc - xc*yb - yc*xa - xb*ya
