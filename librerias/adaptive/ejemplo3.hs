import Numeric.Adaptive

-- Función a integrar
f :: Double -> Double
f x = exp (-x^2)

main :: IO ()
main = do
    let resultado = integrate f 0 10 0.0001  -- Integrar exp(-x^2) de 0 a 10 con tolerancia 0.0001
    putStrLn $ "El resultado de la integral es: " ++ show resultado
