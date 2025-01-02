import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

main :: IO ()
main = do
    -- Inicializar OpenGL
    (_progName, _args) <- getArgsAndInitialize
    createWindow "Triángulo Básico"
    
    -- Establecer la función de visualización
    displayCallback $= display
    -- Establecer la función de redimensionamiento
    reshapeCallback $= Just reshape
    
    -- Iniciar el bucle principal de OpenGL
    mainLoop

-- Función que dibuja el triángulo
display :: DisplayCallback
display = do
    clear [ColorBuffer]
    renderPrimitive Triangles $ do
        -- Definir los vértices del triángulo
        vertex $ Vertex3 0.0 0.5 (0.0 :: GLfloat)
        vertex $ Vertex3 (-0.5) (-0.5) (0.0 :: GLfloat)
        vertex $ Vertex3 0.5 (-0.5) (0.0 :: GLfloat)
    swapBuffers

-- Función para manejar el cambio de tamaño de la ventana
reshape :: ReshapeCallback
reshape size@(Size w h) = do
    viewport $= (Position 0 0, size)
