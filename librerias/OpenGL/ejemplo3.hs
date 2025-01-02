import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

main :: IO ()
main = do
    -- Inicializar OpenGL
    (_progName, _args) <- getArgsAndInitialize
    createWindow "Cuadrado Rotando"
    
    -- Establecer la función de visualización
    displayCallback $= display
    -- Establecer la función de actualización de la ventana
    idleCallback $= Just rotate
    -- Iniciar el bucle principal de OpenGL
    mainLoop

-- Estado de rotación
angle :: GLfloat
angle = 1.0

-- Función para dibujar el cuadrado
display :: DisplayCallback
display = do
    clear [ColorBuffer, DepthBuffer]
    
    -- Establecer la matriz de transformación de la vista
    loadIdentity
    -- Desplazar y rotar el cuadrado
    translate $ Vector3 0.0 0.0 (-5.0 :: GLfloat)
    rotate angle $ Vector3 0.0 1.0 (0.0 :: GLfloat)
    
    -- Establecer color (verde)
    color $ Color3 0.0 1.0 (0.0 :: GLfloat)
    
    -- Dibujar un cuadrado
    renderPrimitive Quads $ do
        vertex $ Vertex3 (-0.5) (-0.5) (0.0 :: GLfloat)
        vertex $ Vertex3 0.5 (-0.5) (0.0 :: GLfloat)
        vertex $ Vertex3 0.5 0.5 (0.0 :: GLfloat)
        vertex $ Vertex3 (-0.5) 0.5 (0.0 :: GLfloat)
    
    swapBuffers

-- Función para rotar el cuadrado constantemente
rotate :: IO ()
rotate = postRedisplay Nothing
