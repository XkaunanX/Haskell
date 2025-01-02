import StanfordParser -- Asumiendo que existe un binding de Haskell para Stanford Parser

-- Esta función puede analizar la estructura de dependencias de una oración.
analizarDependencias :: String -> IO ()
analizarDependencias oracion = do
    dependencias <- parseSentence oracion
    putStrLn dependencias

main :: IO ()
main = do
    let sentence = "Haskell es un lenguaje funcional."
    analizarDependencias sentence
