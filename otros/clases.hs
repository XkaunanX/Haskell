class Sumar a where
    sumar :: a -> a -> a

instance Sumar Int where
    sumar x y = x + y

sumar 3 5              -- Resultado: 8
