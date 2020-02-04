module Reverse where

rvrs :: String -> String
rvrs x = concat[awesome, " ", is, " ", curr]
  where awesome :: String
        awesome = drop 9 x

        isState :: String
        isState = take 8 x

        is :: String
        is = drop 6 isState

        curr :: String
        curr = take 5 x

main :: IO ()
main = print $ rvrs "Curry is awesome"
