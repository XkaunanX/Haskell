import Control.Concurrent
import Control.Monad

actor :: MVar String -> IO ()
actor mvar = do
    msg <- takeMVar mvar
    putStrLn $ "Actor received: " ++ msg
    putMVar mvar "Processed"

main :: IO ()
main = do
    mvar <- newMVar "Start message"
    forkIO $ actor mvar
    result <- takeMVar mvar
    putStrLn result
