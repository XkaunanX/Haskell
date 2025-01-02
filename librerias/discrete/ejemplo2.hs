import Math.Combinatorics.Combinations (combinations)

main :: IO ()
main = do
    let comb = combinations 2 [1, 2, 3]
    print comb
    -- Imprime: [[1,2], [1,3], [2,3]]
