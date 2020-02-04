tellBmi :: Float -> Float -> String
tellBmi weight height
  | bmi <= 18.5 = "Underweight"
  | bmi <= 25.0 = "Normal"
  | bmi <= 30.0 = "Overweight"
  | otherwise = "Something else"
  where bmi = weight / height ^ 2

max' :: Float -> Float -> Float
max' a b
  | a > b = a
  | otherwise = b

comp' :: Float -> Float -> Ordering
comp' a b
  | a == b = EQ
  | a < b = LT
  | otherwise = GT

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where f = firstname !! 0
        l = lastname !! 0

calcBmi :: (RealFloat a) => [(a, a)] -> [a]
calcBmi xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

printOut :: (Integral a) => [a] -> [a]
printOut xs = [x | x <- xs, x `mod` 5 == 0]

printOut' :: String -> String
printOut' xs = [x | x <- xs, x `elem` ['a'..'z']]

head' :: [a] -> a
head' [] = error "empty"
head' (x:_) = x

headTwo :: [a] -> a
headTwo xs = case xs of [] -> error "empty"
                        (x:_) -> x
