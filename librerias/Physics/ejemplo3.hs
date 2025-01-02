import Physics.Units

-- h: altura en metros
-- g: aceleración debida a la gravedad en m/s^2
velocityAtGround :: Double -> Double -> Double
velocityAtGround h g = sqrt (2 * g * h)

main :: IO ()
main = do
    let h = 100.0   -- Altura en metros
    let g = 9.81    -- Aceleración debida a la gravedad en m/s^2
    print (velocityAtGround h g)  -- Velocidad al llegar al suelo
