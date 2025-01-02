import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

main :: IO ()
main = do
    -- Inicializar OpenGL
    (_progName, _args) <- getArgsAndInitialize
    createWindow "Cuadrado Rojo"
    
    -- Establecer la función de visualización
    displayCallback $= display
    -- Iniciar el bucle principal de OpenGL
    mainLoop

-- Función que dibuja el cuadrado
display :: DisplayCallback
display = do
    clear [ColorBuffer]
    
    -- Establecer color (rojo)
    color $ Color3 1.0 0.0 (0.0 :: GLfloat)
    
    -- Dibujar un cuadrado
    renderPrimitive Quads $ do
        vertex $ Vertex3 (-0.5) (-0.5) (0.0 :: GLfloat)
        vertex $ Vertex3 0.5 (-0.5) (0.0 :: GLfloat)
        vertex $ Vertex3 0.5 0.5 (0.0 :: GLfloat)
        vertex $ Vertex3 (-0.5) 0.5 (0.0 :: GLfloat)
    
    swapBuffers
