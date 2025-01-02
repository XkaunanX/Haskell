import Physics.Units

-- m: masa en kilogramos
-- v: velocidad en metros por segundo
kineticEnergy :: Double -> Double -> Double
kineticEnergy m v = 0.5 * m * v^2

main :: IO ()
main = do
    let m = 2.0      -- Masa en kilogramos
    let v = 5.0      -- Velocidad en metros por segundo
    print (kineticEnergy m v)  -- Energía cinética en julios
