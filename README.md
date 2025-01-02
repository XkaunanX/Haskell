# Haskell

Haskell es un lenguaje de programacion funcional, puramente tipado, y de orden superior. Fue desarrollado en los anos 80 por un grupo de investigadores como una forma de consolidar las ideas de la programacion funcional en un unico lenguaje estandarizado. El lenguaje toma su nombre de Haskell Curry, un logico estadounidense conocido por su trabajo en los fundamentos de la logica matematica y la teoria de la computacion.

## En que contexto nacio Haskell

Haskell surgio como un intento de estandarizar los lenguajes funcionales, unificando ideas de lenguajes anteriores como ML y Miranda. Su desarrollo comenzo en 1987 y, aunque se deriva de la programacion funcional, su propuesta fue revolucionaria en cuanto a la incorporacion de caracteristicas como la transparencia referencial y el sistema de tipos estatico.

## Caracteristicas Principales

- **Bajo o Alto Nivel**: Haskell es un lenguaje de alto nivel, lo que significa que abstrae gran parte de los detalles del hardware y la gestion de memoria, permitiendo que los programadores se centren en la logica y las funcionalidades del programa.
  
- **Uso de Punteros**: A diferencia de muchos lenguajes imperativos como C, Haskell no utiliza punteros de forma explicita. En su lugar, la gestion de la memoria es realizada por el recolector de basura, y las estructuras de datos son inmutables.

- **Paradigma**: Haskell sigue el paradigma de programacion funcional. La programacion funcional se basa en el uso de funciones como ciudadanos de primera clase y en la evitacion de los efectos secundarios. Entre sus caracteristicas se incluye la **transparencia referencial**, lo que significa que una expresion siempre devolvera el mismo resultado cuando se le pase el mismo conjunto de parametros.

### Caracteristicas del Paradigma Funcional en Haskell

- **Funciones como Ciudadanos de Primera Clase**: En Haskell, las funciones son tratadas como valores. Esto significa que las funciones pueden ser pasadas como parametros, retornadas como resultados, y almacenadas en variables. Esto permite una gran flexibilidad en el diseño y estructura de los programas.

- **Inmutabilidad**: En la programacion funcional, las variables no se pueden modificar una vez que han sido asignadas. Esto se conoce como inmutabilidad. En Haskell, todas las estructuras de datos son inmutables por defecto, lo que ayuda a evitar errores relacionados con cambios inesperados en los valores.

- **Recursividad**: La recursividad es una herramienta central en la programacion funcional. En lugar de usar bucles iterativos, las funciones en Haskell tienden a ser definidas recursivamente. La recursividad permite que los problemas sean descompuestos en subproblemas más pequeños y manejables.

- **Funciones Puramente Funcionales**: Las funciones en Haskell no tienen efectos secundarios, es decir, no alteran el estado del programa ni interactuan con el mundo exterior (como la entrada/salida o la modificacion de variables globales). Esto se conoce como pureza funcional, y hace que las funciones sean más predecibles y fáciles de razonar.

- **Composicion de Funciones**: La composicion de funciones es un principio fundamental en la programacion funcional. En Haskell, las funciones pueden ser combinadas para formar nuevas funciones. La composicion permite construir programas modulares y reutilizables.

- **Evaluacion Perezosa (Lazy Evaluation)**: Haskell utiliza evaluacion perezosa, lo que significa que las expresiones no se evaluan hasta que realmente son necesarias. Esto permite la creacion de estructuras de datos infinitas y mejora la eficiencia al evitar el calculo de valores innecesarios.

- **Tipo de Tipado**: Haskell tiene un sistema de tipos estatico y fuerte. Los tipos son inferidos automaticamente por el compilador, lo que permite al programador escribir codigo sin tener que especificar todos los tipos de manera explicita. El sistema de tipos tambien soporta el tipado polimorfico, lo que permite escribir funciones generales que pueden operar sobre una variedad de tipos de datos.

- **Modularidad y Abstraccion**: En Haskell, la modularidad se logra mediante el uso de funciones puras y la composicion de funciones. Los programas pueden ser estructurados en modulos, cada uno de los cuales contiene funciones y tipos que se pueden reutilizar en otros modulos. La abstraccion es proporcionada por los tipos de datos algebraicos, que permiten definir nuevos tipos de datos en terminos de tipos existentes.

- **Transparencia Referencial**: Un principio importante de la programacion funcional es la transparencia referencial. Esto significa que una expresion puede ser reemplazada por su valor sin cambiar el comportamiento del programa. Esto hace que el codigo sea más facil de entender y predecir.

- **Eficiencia**: Aunque Haskell es un lenguaje funcional y de alto nivel, su sistema de tipos y la evaluacion perezosa permiten escribir programas altamente eficientes. Haskell es capaz de optimizar el uso de memoria y la ejecucion del programa gracias a la evaluacion selectiva y la reutilizacion de resultados previamente calculados.

- **Sin Efectos Secundarios**: La ausencia de efectos secundarios en Haskell hace que el lenguaje sea especialmente adecuado para la programacion concurrente y paralela, ya que los cambios en el estado global no afectan el comportamiento de otras partes del programa. Esto facilita la razonabilidad del codigo y la ejecucion en entornos concurrentes.

- **Tratamiento de Errores con Monadas**: Haskell utiliza el concepto de monadas para manejar efectos secundarios y errores de manera funcional. Las monadas permiten modelar operaciones que pueden tener efectos secundarios (como la lectura de un archivo o la entrada del usuario) de una manera que mantiene la pureza funcional del lenguaje.
