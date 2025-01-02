import MathEval

main :: IO ()
main = do
    let f = "x^2 + 3*x + 1"  -- Definir una expresión
    let integral = integrate f "x"  -- Calcular la integral indefinida
    putStrLn $ "La integral de " ++ f ++ " es: " ++ integral
