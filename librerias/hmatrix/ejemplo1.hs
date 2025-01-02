import Numeric.LinearAlgebra

main :: IO ()
main = do
    let matrixA = (3><3) [1, 2, 3, 4, 5, 6, 7, 8, 9] :: Matrix Double
        matrixB = (3><3) [9, 8, 7, 6, 5, 4, 3, 2, 1] :: Matrix Double
    print $ matrixA `mul` matrixB
