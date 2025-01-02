import Numeric.LinearAlgebra

main :: IO ()
main = do
    let matrixA = (2><2) [4, 7, 2, 6] :: Matrix Double
    print $ det matrixA  -- Calcula el determinante de la matriz
