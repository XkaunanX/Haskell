import Numeric.Adaptive
import Prelude hiding (pi)

-- Función a integrar
f :: Double -> Double
f x = sin x

main :: IO ()
main = do
    let resultado = integrate f 0 pi 0.0001  -- Integrar sin(x) de 0 a pi con tolerancia 0.0001
    putStrLn $ "El resultado de la integral es: " ++ show resultado
