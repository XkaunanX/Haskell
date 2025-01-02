import Math.Combinatorics.Exact (permutations)

main :: IO ()
main = do
    let perm = permutations "abc"
    print perm
    -- Imprime: ["abc", "acb", "bac", "bca", "cab", "cba"]
