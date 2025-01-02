import Math.Combinatorics.Permutations (permutations)

main :: IO ()
main = do
    let perm = permutations [1, 2, 3]
    print perm
    -- Imprime: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
