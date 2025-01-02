import Physics.Units

-- v: velocidad en metros por segundo
-- t: tiempo en segundos
main :: IO ()
main = do
    let v = 10.0 * m / s  -- Velocidad constante de 10 m/s
    let t = 5.0 * s       -- Tiempo de 5 segundos
    let d = v * t         -- Distancia recorrida
    print d               -- Resultado en metros
