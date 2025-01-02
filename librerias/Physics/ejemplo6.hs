import Physics.Units

-- F: Fuerza en Newtons
-- k: Constante elástica en N/m
-- x: Desplazamiento en metros
hookesLaw :: Double -> Double -> Double
hookesLaw k x = k * x

main :: IO ()
main = do
    let k = 500.0   -- Constante elástica en N/m
    let x = 0.2     -- Desplazamiento en metros
    print (hookesLaw k x)  -- Fuerza en Newtons
