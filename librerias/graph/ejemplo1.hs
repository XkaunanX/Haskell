import Data.Graph

main :: IO ()
main = do
    let graph = buildG (1, 5) [(1, 2), (1, 3), (2, 4), (3, 5)]
    print $ reachable graph 1
    -- Imprime: [1, 2, 3]
