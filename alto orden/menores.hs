module Main where
import Text.Read (readMaybe)

menoresQue :: Int -> [Int] -> [Int]
menoresQue n xs = takeWhile (< n) xs

main :: IO ()
main = do
    putStrLn "Ingrese el valor de n para filtrar elementos menores que n:"
    inputN <- getLine
    let maybeN = readMaybe inputN :: Maybe Int
    case maybeN of
        Nothing -> putStrLn "Ingrese un numero valido."
        Just n -> do
            putStrLn "Ingrese numeros para crear la lista. Escriba 'fin' para terminar:"
            lista <- ingresarNumeros []
            putStrLn $ "Lista completa ingresada: " ++ show lista
            let resultado = menoresQue n lista
            putStrLn $ "Los elementos menores que " ++ show n ++ " son: " ++ show resultado

ingresarNumeros :: [Int] -> IO [Int]
ingresarNumeros listaActual = do
    input <- getLine
    if input == "fin"
        then return listaActual
        else case readMaybe input :: Maybe Int of
            Just numero -> ingresarNumeros (listaActual ++ [numero])
            Nothing -> do
                putStrLn "Ingrese un numero valido o 'fin' para terminar."
                ingresarNumeros listaActual