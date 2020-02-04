fizzBuzz' :: (Integral a, Show a) => a -> String
fizzBuzz' a
  | a `mod` 3 == 0 && a `mod` 5 == 0 = "FizzBuzz"
  | a `mod` 3 == 0 = "Fizz"
  | a `mod` 5 == 0 = "Buzz"
  | otherwise = show a

fizzBuzz :: Integer -> [[Char]]
fizzBuzz x = [fizzBuzz' n | n <- [1..x]]

fizzBuzz'' :: Integer -> String
--fizzBuzz'' x = init( concat[ fizzBuzz' n ++ " " | n <- [1..x]])
fizzBuzz'' x = concat[ fizzBuzz' n ++ " " | n <- [1..x]]
