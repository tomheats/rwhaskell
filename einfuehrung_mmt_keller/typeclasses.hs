module Sample
where

showNum :: Show a => a -> String
showNum x = show x

threeEqual :: Eq a => a -> a -> a -> Bool
threeEqual a b c = if (a == b) && (b == c) then True
  else False

calcMax :: Ord a => a -> a -> a
calcMax a b = max a b

signum' :: Int -> String
signum' a
  | a < 0 = "Negativ"
  | a == 0 = "Neutral"
  | otherwise = "Positiv"

calcUmfang :: Float -> Float
calcUmfang x = result
  where result :: Float
        result = (x * 2) * pi

addMul :: Int -> Int -> (Int, Int)
addMul x y = (x+y, x*y)

fstFromPair :: (Int, Int) -> Int
fstFromPair (x,y) = x

sndFromPair :: (Int, Int) -> Int
sndFromPair (x,y) = y

maxNumber :: Int -> [Int]
maxNumber x = [1,2..x]

sort2 :: Int -> Int -> (Int, Int)
sort2 a b
  | a > b = (b, a)
  | otherwise = (a, b)

almostEqual :: (Int, Int) -> (Int, Int) -> Bool
almostEqual (a, b) (c, d) = if (a == c || a == d) && (b == c || b == d) then True
  else False
