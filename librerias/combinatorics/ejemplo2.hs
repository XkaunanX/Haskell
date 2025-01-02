import Math.Combinatorics.Exact (combinations)

main :: IO ()
main = do
    let comb = combinations 2 "abc"
    print comb
    -- Imprime: ["ab", "ac", "bc"]
