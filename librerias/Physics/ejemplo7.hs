import Physics.Units

-- Constante de Coulomb K = 8.99 × 10^9 N·m²/C²
electricPotential :: Double -> Double -> Double
electricPotential q r = (8.99e9) * q / r

main :: IO ()
main = do
    let q = 1e-6    -- Carga en culombios
    let r = 0.1     -- Distancia en metros
    print (electricPotential q r)  -- Potencial eléctrico en voltios
