module Main where

-- Definir una función que devuelva las sublistas que contienen el carácter `c` exactamente `k` veces
ocurrencias :: ([[Char]], Char, Int) -> [[Char]]
ocurrencias ([], _, _) = []
ocurrencias (xs:xss, c, k)
    | contar (xs, c) == k = xs : ocurrencias (xss, c, k)  -- Acumula las sublistas que cumplen la condición
    | otherwise           = ocurrencias (xss, c, k)

-- Función que cuenta la cantidad de veces que aparece un carácter en una lista
contar :: ([Char], Char) -> Int
contar ([], _) = 0
contar (x:xs, n)
    | x == n    = 1 + contar (xs, n)
    | otherwise = contar (xs, n)

main :: IO ()
main = do
    -- Defino una lista de listas de caracteres
    let lista = ["hola", "mundo", "hola mundo", "adios"]
    -- Defino el carácter a buscar y la cantidad de ocurrencias deseadas
    let caracter = 'o'
    let cantidad = 2
    -- Llamo a la función `ocurrencias`
    let resultado = ocurrencias (lista, caracter, cantidad)
    -- Imprimo el resultado
    putStrLn $ "Las sublistas con el carácter '" ++ [caracter] ++ "' exactamente " ++ show cantidad ++ " veces son: " ++ show resultado