module Main where
import Text.Read (readMaybe)

primerosN :: Int -> [a] -> [a]
primerosN n xs = take n xs

main :: IO ()
main = do
    putStrLn "Ingrese el número de elementos que desea tomar de la lista:"
    inputN <- getLine
    let maybeN = readMaybe inputN :: Maybe Int
    case maybeN of
        Nothing -> putStrLn "Por favor, ingrese un número válido."
        Just n -> do
            putStrLn "Ingrese números para crear la lista. Escribe 'fin' para terminar:"
            lista <- ingresarNumeros []
            putStrLn $ "Lista completa ingresada: " ++ show lista
            let resultado = primerosN n lista
            putStrLn $ "Los primeros " ++ show n ++ " elementos son: " ++ show resultado

ingresarNumeros :: [Int] -> IO [Int]
ingresarNumeros listaActual = do
    input <- getLine
    if input == "fin"
        then return listaActual
        else case readMaybe input :: Maybe Int of
            Just numero -> ingresarNumeros (listaActual ++ [numero])
            Nothing -> do
                putStrLn "Por favor, ingresa un número válido o 'fin' para terminar."
                ingresarNumeros listaActual