module Main where

-- Funcion que devuelve una lista con la logitud de cada sublista
longitud :: [[a]] -> [Int]
longitud [] = []
longitud (xs:xss) = length xs : longitud xss

main :: IO ()
main = do
    -- Lista de lista donde voy a checkear 
    let lista = [[1,2],[], [6,4,23,9,0], [9,9,9],[1]]

    -- Llamo a la funcion longitud
    let resultado = longitud lista

    -- Imprimo el resultado
    putStrLn $ "Resultado: " ++ show resultado
    