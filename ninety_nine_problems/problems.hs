--2 return second last element of list
func :: (Ord a) => [a] -> a
func x = x !! almostLast
  where almostLast :: Int
        almostLast = length x - 2

--3 return n'th element of a list
elementAt :: (Ord a) => [a] -> Int -> a
elementAt l n = l !! n

--4 number of elements in a list
elementsInList :: [a] -> Int
elementsInList a = length a

--5 reverse list
reverseList :: [a] -> [a]
reverseList a = reverse a

--6 check if a list is read equal forwards and backwards
isPalindrom :: (Eq a) => [a] -> Bool
isPalindrom a = if a == reverse a then True else False

--flatten a list
data NestedList a = Elem a | List [NestedList a]
flatten :: (NestedList a) -> [a]
flatten (Elem a)   = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
