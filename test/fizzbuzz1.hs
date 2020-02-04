fizzBuzz :: Integer -> String
fizzBuzz a =
  if mod a 3 == 0 && mod a 5 ==0
    then "FizzBuzz"
  else if (a `mod` 3 == 0)
    then "Fizz"
  else if a `mod` 5 == 0
    then "Buzz"
    else show a
