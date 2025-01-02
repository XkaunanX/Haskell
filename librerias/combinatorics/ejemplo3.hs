import Math.Combinatorics.Exact (partitions)

main :: IO ()
main = do
    let part = partitions "abc"
    print part
    -- Imprime: [[], ["a"], ["b"], ["c"], ["a","b"], ["a","c"], ["b","c"], ["a","b","c"]]
