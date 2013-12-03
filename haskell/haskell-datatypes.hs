module HaskellDatatypes where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Eq)

insert :: (Ord a) => a -> Tree a -> Tree a

contains :: (Ord a) => a -> Tree a -> Bool

toList :: Tree a -> [a]

remove :: Tree a -> a -> Tree a

bstSort :: (Ord a) => [a] -> [a]

printInOrder :: (Show a) => Tree a -> IO ()

sortStream :: IO [Int]
