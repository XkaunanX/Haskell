import Statistics.Math

main :: IO ()
main = do
    let datos = [1.0, 2.0, 3.0, 4.0, 5.0]
    print $ stdDev datos  -- Calcula la desviación estándar de los datos
