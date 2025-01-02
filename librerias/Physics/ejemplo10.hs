import Physics.Units

-- ω: Frecuencia angular en radianes por segundo
-- f: Frecuencia en hertzios
angularFrequency :: Double -> Double
angularFrequency f = 2 * pi * f

main :: IO ()
main = do
    let f = 50.0    -- Frecuencia en hertzios (Hz)
    print (angularFrequency f)  -- Frecuencia angular en radianes por segundo
