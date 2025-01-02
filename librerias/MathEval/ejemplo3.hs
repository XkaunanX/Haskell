import MathEval

main :: IO ()
main = do
    let ecuacion = "x^2 - 4"  -- Definir la ecuación
    let solucion = solve ecuacion "x"  -- Resolver para x
    putStrLn $ "Las soluciones de la ecuación " ++ ecuacion ++ " son: " ++ solucion
