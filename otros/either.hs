let puedeSerError x = if x > 0 then Right "Bien" else Left "Error"
puedeSerError 10       -- Resultado: Right "Bien"
puedeSerError (-5)     -- Resultado: Left "Error"
