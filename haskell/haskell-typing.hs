-- slice returns a range of a list from index a to index b, inclusive
-- slice 5 8 [1..] => [5, 6, 7, 8]
-- Look up the "take" and "drop" functions
slice :: Int -> Int -> [a] -> [a]

-- encode takes a string and run-length encoding, returning a list of tuples
-- with the element and the number of times it appears in sequence
-- encode "aaabbcaa" => [('a', 3), ('b', 2), ('c', 1), ('a', 2)]
encode :: (Eq a) => [a] -> [(a, Int)]

-- decode expands a run-length encoded list of tuples into a string
-- decode [('a', 3), ('b', 2), ('c', 1), ('a', 2)] => "aaabbcaa"
-- Look up the "replicate" and "concat" functions
decode :: [(a, Int)] -> [a]

-- dropEvery takes list and removes every nth element
-- dropEvery 3 [1..13] => [1, 2, 4, 5, 7, 8, 10, 11, 13]
dropEvery :: [a] -> Int -> [a]

-- rpn evaluates a string of reverse polish notation operations
-- rpn "10 4 3 + 2 * -" => -4
-- Look up the "words" and "read" functions
rpn :: (Num a) => String -> a
