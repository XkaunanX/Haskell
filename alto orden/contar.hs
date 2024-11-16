module Main where
import Text.Read (readMaybe)

contar :: Int -> Int -> [[Int]] -> Int
contar n k xss = length (filter (\xs -> length (filter (== n) xs) == k) xss)

main :: IO ()
main = do
    putStrLn "Ingresa el número que se quiere contar en cada sublista"
    inputN <- getLine
    let n = read inputN :: Int
    putStrLn "Ingresa la cantidad exacta de ocurrencias que deseas contar en cada sublista"
    inputK <- getLine
    let k = read inputK :: Int
    putStrLn "Ingresa números para cada sublista (escribe 'fin' para cada sublista y 'fin todo' para terminar)"
    sublistas <- ingresarSublistas []
    putStrLn $ "Las sublistas ingresadas son: " ++ show sublistas
    let resultado = contar n k sublistas
    putStrLn $ "Número de sublistas en las que el número " ++ show n ++ " aparece exactamente " ++ show k ++ " veces: " ++ show resultado

ingresarSublistas :: [[Int]] -> IO [[Int]]
ingresarSublistas listasActuales = do
    putStrLn "Ingresa números para una nueva sublista. Escribe 'fin' para finalizar la sublista actual o 'fin todo' para terminar completamente."
    sublista <- ingresarNumeros []
    if null sublista then return listasActuales
    else ingresarSublistas (listasActuales ++ [sublista])

ingresarNumeros :: [Int] -> IO [Int]
ingresarNumeros listaActual = do
    input <- getLine
    if input == "fin" 
        then return listaActual
        else case readMaybe input :: Maybe Int of
            Just numero -> ingresarNumeros (listaActual ++ [numero])
            Nothing -> do
                putStrLn "Por favor, ingresa un número válido o 'fin'."
                ingresarNumeros listaActual