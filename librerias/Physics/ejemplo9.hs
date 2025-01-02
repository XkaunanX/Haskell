import Physics.Units

-- g: Intensidad del campo gravitacional en N/kg
-- M: Masa en kilogramos
-- r: Distancia en metros
gravitationalField :: Double -> Double -> Double
gravitationalField m r = (6.67430e-11) * m / (r^2)

main :: IO ()
main = do
    let m = 5.97e24   -- Masa de la Tierra en kilogramos
    let r = 6371000   -- Radio de la Tierra en metros
    print (gravitationalField m r)  -- Campo gravitacional en N/kg
