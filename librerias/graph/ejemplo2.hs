import Data.Graph

main :: IO ()
main = do
    let graph = buildG (1, 5) [(1, 2), (1, 3), (2, 4), (3, 5)]
    let dfsResult = dfs graph 1
    print dfsResult
    -- Imprime: [(1, [1, 2, 4]), (3, [3, 5]), (2, [2, 4])]
