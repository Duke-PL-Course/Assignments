import Test.HUnit
import HaskellIntro

myZipTest = TestCase (do
                       (assertEqual "myZip"
                        [(1, 4), (2, 5), (3, 6)]
                        (myZip [1..3] [4..])))

qsortTest = TestCase (do
                       (assertEqual "qsort [-1, 5, 2.4, 11, -7]"
                        [-7, -1, 2.4, 5, 11]
                        (qsort [-1, 5, 2.4, 11, -7])))

fibTest = TestCase (do
                     assertEqual "fib 0" 0 (fib 0)
                     assertEqual "fib 1" 1 (fib 1)
                     assertEqual "fib 2" 1 (fib 2)
                     assertEqual "fib 3" 2 (fib 3)
                     assertEqual "fib 5" 5 (fib 5)
                     assertEqual "fib 10" 55 (fib 10)
                     assertEqual "fib 100" 354224848179261915075 (fib 100)
                   )

main = runTestTT $ test [ "myZip" ~: myZipTest,
                          "qsort" ~: qsortTest,
                          "fib" ~: fibTest,
                          "euler6" ~: 25164150 ~=? euler6,
                          "euler9" ~: 31875000 ~=? euler9 ]
