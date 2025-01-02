import Control.Concurrent
import Control.Monad

actor1 :: MVar String -> MVar String -> IO ()
actor1 mvar sendToActor2 = do
    msg <- takeMVar mvar
    putStrLn $ "Actor1 received: " ++ msg
    putMVar sendToActor2 "Message from Actor1"

actor2 :: MVar String -> IO ()
actor2 mvar = do
    msg <- takeMVar mvar
    putStrLn $ "Actor2 received: " ++ msg

main :: IO ()
main = do
    mvar1 <- newMVar "Hello from main"
    mvar2 <- newMVar ""
    forkIO $ actor1 mvar1 mvar2
    forkIO $ actor2 mvar2
    threadDelay 1000000  -- Espera para que los actores procesen los mensajes
