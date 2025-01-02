import StanfordParser

-- Analizar la oración con tokenización y etiquetado de partes del discurso
analizarPOS :: String -> IO ()
analizarPOS oracion = do
    resultado <- posTagging oracion
    print resultado

main :: IO ()
main = do
    let sentence = "El perro corre rápidamente."
    analizarPOS sentence
