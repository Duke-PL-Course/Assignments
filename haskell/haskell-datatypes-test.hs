import Test.HUnit
import HaskellDatatypes


insertTest = TestCase (do
                        (assertEqual
                         "insert 1 EmptyTree"
                         (Node 1 EmptyTree EmptyTree)
                         (insert 1 EmptyTree :: Tree Int))
                        (assertEqual
                         "insert 1 EmptyTree"
                         (Node 1 EmptyTree (Node 3 EmptyTree EmptyTree) :: Tree Int)
                         (insert 3 $ insert 1 EmptyTree))
                        (assertEqual
                         "insert 1 EmptyTree"
                         (Node 1 EmptyTree (Node 3 (Node 2 EmptyTree EmptyTree) EmptyTree) :: Tree Int)
                         (insert 2 $ insert 3 $ insert 1 EmptyTree)))

containsTest =
    let tree = insert 2 $ insert 3 $ insert 1 EmptyTree
    in
      TestCase (do
                 (assertEqual
                  "contains 2"
                  True
                  (contains 2 tree))
                 (assertEqual
                  "contains 4"
                  False
                  (contains 4 tree)))

toListTest = TestCase (do
                        (assertEqual
                         "toList"
                         [1, 2, 3]
                         (toList $ insert 2 $ insert 3 $ insert 1 EmptyTree)))

bstSortTest = TestCase (do
                         (assertEqual
                          "bstSort [-1, 5, 2.4, 11, -7]"
                          [-7, -1, 2.4, 5, 11]
                          (bstSort [-1, 5, 2.4, 11, -7])))

main = runTestTT $ test [ "insert" ~: insertTest,
                          "contains" ~: containsTest,
                          "toList" ~: toListTest,
                          "bstSort" ~: bstSortTest ]
