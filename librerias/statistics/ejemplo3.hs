import Statistics.Math

main :: IO ()
main = do
    let datos = [1.0, 2.0, 3.0, 4.0, 5.0]
    print $ variance datos  -- Calcula la varianza de los datos
