# Uso de IO en Haskell

En Haskell, el manejo de entrada y salida (IO) se realiza a traves de una serie de funciones que permiten interactuar con el sistema de archivos, la consola y otros dispositivos de entrada/salida. A diferencia de otros lenguajes, Haskell es un lenguaje puramente funcional, lo que significa que las operaciones de IO deben ser tratadas de forma especial debido a su naturaleza impura.

## Conceptos Clave

- **Acciones IO**: En Haskell, las acciones de IO no se ejecutan de inmediato. En su lugar, se describen como valores de tipo `IO`. Esto permite mantener la pureza del lenguaje al separar las acciones que afectan al mundo exterior de las funciones puras que no tienen efectos secundarios.
  
- **Tipos de IO**: Las acciones IO tienen un tipo de dato `IO a`, donde `a` representa el tipo del resultado que la accion IO devuelve. Por ejemplo, una accion que lee un archivo puede tener el tipo `IO String`, ya que devuelve un `String` con el contenido del archivo.

- **Secuencias de IO**: El orden de las acciones IO es importante. Las acciones IO se componen mediante el operador `>>` o `do`. Esto permite ejecutar varias acciones en secuencia.

- **Operaciones comunes de IO**: Algunas de las operaciones comunes en IO incluyen leer y escribir archivos, leer desde la entrada estándar (como el teclado), y escribir en la salida estándar (como la pantalla).

## Manejo de Archivos

Haskell proporciona funciones para abrir, leer, escribir y cerrar archivos. Las operaciones de lectura y escritura en archivos generalmente se hacen de forma secuencial, y cada una de estas acciones devuelve una accion IO.

## Entrada/Salida Estándar

Haskell tambien permite interactuar con la consola, lo que incluye leer entradas del usuario y mostrar salidas en la pantalla. Las funciones para leer entradas son de tipo `IO String`, mientras que las funciones para escribir en la pantalla devuelven `IO ()`, lo que significa que no devuelven un valor importante, sino que producen un efecto secundario.

## Pureza y Efectos Secundarios

En Haskell, la IO se maneja a traves de un modelo de efectos secundarios, donde las acciones IO se encapsulan en un tipo especial. Esto permite que las funciones puras no se vean afectadas por estos efectos secundarios y mantiene la consistencia y previsibilidad del lenguaje.
