import Physics.Units

-- Constante de Coulomb K = 8.99 × 10^9 N·m²/C²
coulombForce :: Double -> Double -> Double -> Double
coulombForce q1 q2 r = (8.99e9) * (q1 * q2) / (r^2)

main :: IO ()
main = do
    let q1 = 1e-6       -- carga en culombios (C)
    let q2 = 1e-6       -- carga en culombios (C)
    let r = 0.1         -- distancia en metros
    print (coulombForce q1 q2 r)  -- Fuerza en Newtons
