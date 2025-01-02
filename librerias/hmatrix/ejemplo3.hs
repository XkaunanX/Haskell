import Numeric.LinearAlgebra

main :: IO ()
main = do
    let a = (3><3) [2, -1, 1, 1, 3, 2, 1, 2, -1] :: Matrix Double
        b = (3>0) [2, 4, 1] :: Matrix Double
    print $ linsolve a b  -- Resuelve el sistema Ax = b
