import MathEval

main :: IO ()
main = do
    let f = "x^3 + 2*x^2 + 3*x + 1"  -- Definir una expresión
    let derivada = deriv f "x"       -- Calcular la derivada con respecto a x
    putStrLn $ "La derivada de " ++ f ++ " es: " ++ derivada
