import Test.HUnit
import HaskellTyping

sliceTest = TestCase (do
                       (assertEqual "slice 5 8 [1..]"
                        [5, 6, 7, 8]
                        (slice 5 8 [1..])))

encodeTest = TestCase (do
                    (assertEqual
                     "encode \"aaabbcaa\""
                     [('a', 3), ('b', 2), ('c', 1), ('a', 2)]
                     (encode "aaabbcaa")))

decodeTest = TestCase (do
                        (assertEqual
                         "decode [('a', 3), ('b', 2), ('c', 1), ('a', 2)]"
                         "aaabbcaa"
                         (decode [('a', 3), ('b', 2), ('c', 1), ('a', 2)])))

dropEveryTest = TestCase (do
                           (assertEqual
                            "dropEvery [1..13] 3"
                            [1, 2, 4, 5, 7, 8, 10, 11, 13]
                            (dropEvery [1..13] 3)))

rpnTest = TestCase (do
                     (assertEqual
                      "rpn \"10 4 3 + 2 * -\""
                      (-4)
                      (rpn "10 4 3 + 2 * -")))

main = runTestTT $ test [ "slice" ~: sliceTest,
                          "encode" ~: encodeTest,
                          "decode" ~: decodeTest,
                          "dropEvery" ~: dropEveryTest,
                          "rpn" ~: rpnTest ]
