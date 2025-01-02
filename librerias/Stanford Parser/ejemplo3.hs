import StanfordParser

-- Extraer relaciones entre entidades en una oración
extraerRelaciones :: String -> IO ()
extraerRelaciones oracion = do
    relaciones <- extractRelations oracion
    print relaciones

main :: IO ()
main = do
    let sentence = "Barack Obama fue presidente de Estados Unidos."
    extraerRelaciones sentence
