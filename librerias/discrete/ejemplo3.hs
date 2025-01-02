import Math.Combinatorics.Subsets (subsets)

main :: IO ()
main = do
    let subs = subsets [1, 2, 3]
    print subs
    -- Imprime: [[], [1], [2], [3], [1,2], [1,3], [2,3], [1,2,3]]
