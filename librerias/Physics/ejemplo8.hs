import Physics.Units

-- W: Trabajo en julios
-- F: Fuerza en Newtons
-- d: Distancia en metros
work :: Double -> Double -> Double
work f d = f * d

main :: IO ()
main = do
    let f = 50.0    -- Fuerza en Newtons
    let d = 10.0    -- Distancia en metros
    print (work f d)  -- Trabajo en julios
