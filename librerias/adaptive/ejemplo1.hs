import Numeric.Adaptive

-- Función a integrar
f :: Double -> Double
f x = x^2 + 2*x + 1

main :: IO ()
main = do
    let resultado = integrate f 0 1 0.001  -- Integrar f de 0 a 1 con tolerancia 0.001
    putStrLn $ "El resultado de la integral es: " ++ show resultado
