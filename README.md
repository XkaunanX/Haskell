# Haskell

Haskell es un lenguaje de programacion funcional, puramente tipado, y de orden superior. Fue desarrollado en los anos 80 por un grupo de investigadores como una forma de consolidar las ideas de la programacion funcional en un unico lenguaje estandarizado. El lenguaje toma su nombre de Haskell Curry, un logico estadounidense conocido por su trabajo en los fundamentos de la logica matematica y la teoria de la computacion.

## En que contexto nacio Haskell

Haskell surgio como un intento de estandarizar los lenguajes funcionales, unificando ideas de lenguajes anteriores como ML y Miranda. Su desarrollo comenzo en 1987 y, aunque se deriva de la programacion funcional, su propuesta fue revolucionaria en cuanto a la incorporacion de caracteristicas como la transparencia referencial y el sistema de tipos estatico.

## Caracteristicas Principales

- **Bajo o Alto Nivel**: Haskell es un lenguaje de alto nivel, lo que significa que abstrae gran parte de los detalles del hardware y la gestion de memoria, permitiendo que los programadores se centren en la logica y las funcionalidades del programa.
  
- **Uso de Punteros**: A diferencia de muchos lenguajes imperativos como C, Haskell no utiliza punteros de forma explicita. En su lugar, la gestion de la memoria es realizada por el recolector de basura, y las estructuras de datos son inmutables.

- **Paradigma**: Haskell sigue el paradigma de programacion funcional. La programacion funcional se basa en el uso de funciones como ciudadanos de primera clase y en la evitacion de los efectos secundarios. Entre sus caracteristicas se incluye la **transparencia referencial**, lo que significa que una expresion siempre devolvera el mismo resultado cuando se le pase el mismo conjunto de parametros.

- **Tipo de Tipado**: Haskell es un lenguaje **fuertemente tipado** y tiene un sistema de tipos estatico. Esto significa que los tipos de datos son conocidos en tiempo de compilacion y que no es posible realizar operaciones entre tipos incompatibles sin una conversion explicita. Esto ayuda a prevenir muchos errores comunes en tiempo de ejecucion.

- **Compilado**: Haskell es un lenguaje compilado. El compilador de Haskell, como GHC (Glasgow Haskell Compiler), traduce el codigo fuente a codigo maquina optimizado antes de su ejecucion. Esto asegura un alto rendimiento, a pesar de ser un lenguaje funcional.

- **Funciones en Haskell**: Las funciones en Haskell son **ciudadanos de primera clase**, lo que significa que pueden ser pasadas como argumentos, retornadas como resultados y almacenadas en variables. Las funciones son **puramente funcionales**, lo que implica que no tienen efectos secundarios. Esto facilita la razonabilidad matematica del codigo.

- **Tipos Polimorficos**: Haskell soporta el **tipado polimorfico**, lo que permite escribir funciones generales que pueden trabajar con cualquier tipo de dato. Esto se logra mediante el uso de **tipos genericos** (por ejemplo, `a` en una funcion que puede aceptar cualquier tipo de dato). El sistema de tipos de Haskell es muy potente, permitiendo la creacion de funciones reutilizables y flexibles.

- **Operadores**: En Haskell, los operadores son funciones, y como tales, pueden ser utilizados en expresiones algebraicas o como funciones ordinarias. Los operadores son definidos mediante funciones y pueden ser utilizados con cualquier tipo de dato que sea compatible con la operacion que realizan. Ademas, Haskell permite la definicion de nuevos operadores por parte del programador.
