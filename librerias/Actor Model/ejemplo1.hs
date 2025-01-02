import Control.Concurrent
import Control.Monad

actor :: String -> IO ()
actor name = forever $ do
    msg <- readMVar name
    putStrLn $ name ++ " received: " ++ msg

main :: IO ()
main = do
    name <- newMVar "actor1"
    forkIO $ actor name
    putMVar name "Hello, Actor!"
