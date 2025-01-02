import Physics.Units

-- I: corriente en amperios
-- V: voltaje en voltios
-- R: resistencia en ohmios
ohmLaw :: Double -> Double -> Double
ohmLaw v r = v / r

main :: IO ()
main = do
    let v = 12.0      -- Voltaje en voltios
    let r = 4.0       -- Resistencia en ohmios
    print (ohmLaw v r)  -- Corriente en amperios
