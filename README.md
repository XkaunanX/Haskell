# Haskell

Haskell es un lenguaje de programacion funcional, puramente tipado, y de orden superior. Fue desarrollado en los anos 80 por un grupo de investigadores como una forma de consolidar las ideas de la programacion funcional en un unico lenguaje estandarizado. El lenguaje toma su nombre de Haskell Curry, un logico estadounidense conocido por su trabajo en los fundamentos de la logica matematica y la teoria de la computacion.

## En que contexto nacio Haskell

Haskell surgio como un intento de estandarizar los lenguajes funcionales, unificando ideas de lenguajes anteriores como ML y Miranda. Su desarrollo comenzo en 1987 y, aunque se deriva de la programacion funcional, su propuesta fue revolucionaria en cuanto a la incorporacion de caracteristicas como la transparencia referencial y el sistema de tipos estatico.

## Caracteristicas Principales

- **Bajo o Alto Nivel**: Haskell es un lenguaje de alto nivel, lo que significa que abstrae gran parte de los detalles del hardware y la gestion de memoria, permitiendo que los programadores se centren en la logica y las funcionalidades del programa.
  
- **Uso de Punteros**: A diferencia de muchos lenguajes imperativos como C, Haskell no utiliza punteros de forma explicita. En su lugar, la gestion de la memoria es realizada por el recolector de basura, y las estructuras de datos son inmutables.

- **Lenguaje Compilado**: Haskell es un lenguaje **compilado**, puramente funcional, y de alto nivel, diseñado para resolver problemas con un enfoque declarativo y basado en funciones matemáticas. Su sistema de compilación traduce el código fuente a un binario optimizado que puede ejecutarse directamente en la máquina objetivo. Los compiladores de Haskell, como GHC (Glasgow Haskell Compiler), aplican optimizaciones avanzadas como la eliminación de código redundante y la evaluación estricta cuando es necesario.

```bash
ghc test.hs -o test
```

- **Paradigma**: Haskell sigue el paradigma de programacion funcional. La programacion funcional se basa en el uso de funciones como ciudadanos de primera clase y en la evitacion de los efectos secundarios. Entre sus caracteristicas se incluye la **transparencia referencial**, lo que significa que una expresion siempre devolvera el mismo resultado cuando se le pase el mismo conjunto de parametros.

### Caracteristicas del Paradigma Funcional en Haskell

- **Funciones como Ciudadanos de Primera Clase**: En Haskell, las funciones son tratadas como valores. Esto significa que las funciones pueden ser pasadas como parametros, retornadas como resultados, y almacenadas en variables. Esto permite una gran flexibilidad en el diseño y estructura de los programas.

Funcion que toma otra funcion como parametro

```Haskell
-- Firma de la funcion
aplicarFuncion :: (Int -> Int) -> Int -> Int

-- Cuerpo de la funcion que toma una funcion como parametro
aplicarFuncion f x = f x
```
Función que retorna otra función

```Haskell
-- Firma de la funcion
crearMultiplicador :: Int -> (Int -> Int)

-- Cuerpo de la funcion que retorna una funcion
crearMultiplicador x = \y -> x * y
```

Almacenando una función en una variable

```Haskell
-- Definir una funcion
doblar :: Int -> Int
doblar x = x * 2

-- Almacenar la funcion en una variable
miFuncion = doblar

-- Usar la funcion almacenada
resultado = miFuncion 5  -- Esto retorna 10
```

- **Inmutabilidad**: En la programacion funcional, las variables no se pueden modificar una vez que han sido asignadas. Esto se conoce como inmutabilidad. En Haskell, todas las estructuras de datos son inmutables por defecto, lo que ayuda a evitar errores relacionados con cambios inesperados en los valores.

```Haskell
  -- Asignamos un valor a la variable x
x = 5

-- Intentar cambiar el valor de x en otro lugar causaría un error
-- x = 10  -- Esto dará un error, ya que x no puede ser modificada

-- Sin embargo, podemos crear nuevas variables basadas en x
y = x + 2   -- y tendrá el valor 7, pero x sigue siendo 5
```

- **Recursividad**: La recursividad es una herramienta central en la programacion funcional. En lugar de usar bucles iterativos, las funciones en Haskell tienden a ser definidas recursivamente. La recursividad permite que los problemas sean descompuestos en subproblemas más pequeños y manejables.

```Haskell
-- Definicion de la funcion factorial de manera recursiva
factorial :: Integer -> Integer
factorial 0 = 1  -- Caso base
factorial n = n * factorial (n - 1)  -- Paso recursivo
```
Explicación:
Caso base: Cuando el valor de n es 0, el resultado es 1. Este es el caso base de la recursión, que detiene la ejecución.

Paso recursivo: Para cualquier otro valor de n, la función se llama a sí misma, multiplicando n por el resultado de factorial(n - 1). Esto continúa hasta llegar al caso base.

- **Funciones Puramente Funcionales**: Las funciones en Haskell no tienen efectos secundarios, es decir, no alteran el estado del programa ni interactuan con el mundo exterior (como la entrada/salida o la modificacion de variables globales). Esto se conoce como pureza funcional, y hace que las funciones sean más predecibles y fáciles de razonar.

```Haskell
-- Definicion de una funcion puramente funcional
sumaDeCuadrados :: Num a => a -> a -> a
sumaDeCuadrados x y = x * x + y * y
```

- **Composicion de Funciones**: La composicion de funciones es un principio fundamental en la programacion funcional. En Haskell, las funciones pueden ser combinadas para formar nuevas funciones. La composicion permite construir programas modulares y reutilizables.

```Haskell
-- Definicion de funciones simples
incrementar :: Num a => a -> a
incrementar x = x + 1

duplicar :: Num a => a -> a
duplicar x = x * 2

-- Composicion de funciones
incrementarYDuplicar :: Num a => a -> a
incrementarYDuplicar = duplicar . incrementar
```

- **Evaluacion Perezosa (Lazy Evaluation)**: Haskell utiliza evaluacion perezosa, lo que significa que las expresiones no se evaluan hasta que realmente son necesarias. Esto permite la creacion de estructuras de datos infinitas y mejora la eficiencia al evitar el calculo de valores innecesarios.

```Haskell
-- Definicion de una lista infinita
numerosNaturales :: [Integer]
numerosNaturales = [1..]

-- Tomar los primeros 5 numeros de la lista infinita
primerosCinco :: [Integer]
primerosCinco = take 5 numerosNaturales
```

- **Tipo de Tipado**: Haskell tiene un sistema de tipos estatico y fuerte. Los tipos son inferidos automaticamente por el compilador, lo que permite al programador escribir codigo sin tener que especificar todos los tipos de manera explicita. El sistema de tipos tambien soporta el tipado polimorfico, lo que permite escribir funciones generales que pueden operar sobre una variedad de tipos de datos.

- **Modularidad y Abstraccion**: En Haskell, la modularidad se logra mediante el uso de funciones puras y la composicion de funciones. Los programas pueden ser estructurados en modulos, cada uno de los cuales contiene funciones y tipos que se pueden reutilizar en otros modulos. La abstraccion es proporcionada por los tipos de datos algebraicos, que permiten definir nuevos tipos de datos en terminos de tipos existentes.

- **Transparencia Referencial**: Un principio importante de la programacion funcional es la transparencia referencial. Esto significa que una expresion puede ser reemplazada por su valor sin cambiar el comportamiento del programa. Esto hace que el codigo sea más facil de entender y predecir.

- **Eficiencia**: Aunque Haskell es un lenguaje funcional y de alto nivel, su sistema de tipos y la evaluacion perezosa permiten escribir programas altamente eficientes. Haskell es capaz de optimizar el uso de memoria y la ejecucion del programa gracias a la evaluacion selectiva y la reutilizacion de resultados previamente calculados.

- **Sin Efectos Secundarios**: La ausencia de efectos secundarios en Haskell hace que el lenguaje sea especialmente adecuado para la programacion concurrente y paralela, ya que los cambios en el estado global no afectan el comportamiento de otras partes del programa. Esto facilita la razonabilidad del codigo y la ejecucion en entornos concurrentes.

## Tratamiento de Errores con Monadas

Haskell utiliza el concepto de **monadas** para manejar efectos secundarios y errores de manera funcional. Las monadas permiten modelar operaciones que pueden tener efectos secundarios (como la lectura de un archivo o la entrada del usuario) de una manera que mantiene la pureza funcional del lenguaje.

### Qué son las Mónadas

Las mónadas son estructuras que permiten:

1. **Encapsular errores**: Proveen una forma de manejar cálculos que pueden fallar o devolver un resultado inválido.
2. **Encadenar operaciones**: Facilitan la ejecución secuencial de operaciones, propagando errores automáticamente.
3. **Mantener la pureza funcional**: Al encapsular efectos secundarios, las mónadas evitan modificaciones del estado global y aseguran que las funciones sigan siendo predecibles.

### Principales Mónadas para Manejo de Errores

#### Mónada `Maybe`

La mónada `Maybe` se utiliza para representar cálculos que pueden fallar. Tiene dos posibles valores:

- `Just x`: Indica que el cálculo fue exitoso y devolvió el valor `x`.
- `Nothing`: Indica que el cálculo falló.

Esta estructura es útil para modelar la ausencia de un valor sin usar valores nulos.

#### Mónada `Either`

La mónada `Either` extiende la funcionalidad de `Maybe` permitiendo agregar información sobre el error. Tiene dos posibles valores:

- `Left e`: Indica un error, acompañado de información adicional `e`.
- `Right x`: Indica que el cálculo fue exitoso y devolvió el valor `x`.

`Either` es ideal para manejar errores con contexto, como mensajes de error o códigos específicos.

## Características del Uso de Mónadas para Manejo de Errores

1. **Encapsulación de Errores**: Las mónadas encapsulan errores de forma segura, eliminando la necesidad de manejar excepciones o valores nulos.
2. **Propagación Automática**: Los errores se propagan automáticamente a través de las operaciones encadenadas, evitando comprobaciones manuales en cada paso.
3. **Separación de Responsabilidades**: Permiten separar la lógica principal del manejo de errores, mejorando la claridad y modularidad del código.
4. **Pureza Funcional**: Al tratar los errores como datos, se evita la dependencia de estados mutables o efectos secundarios.

## Ventajas de Utilizar Mónadas

- **Claridad**: Proveen una forma explícita y declarativa de manejar errores.
- **Reusabilidad**: Las funciones que operan sobre mónadas son más fáciles de reutilizar debido a su naturaleza genérica.
- **Control**: Facilitan un control preciso sobre cómo se manejan y propagan los errores en un programa.
