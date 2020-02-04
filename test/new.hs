remLowCase words = [c | c <- words, c `elem` ['A'..'Z']]
bar = [1,2..10]
foo = [x+1 | x <- [1..10]]

foobar = foo ++ bar

func inp = do
  print bar
  print foo
  print newList
  print [x | x <- inp, x `elem` ['A'..'Z']]
  where
    newList = inp

tuple = (1,5)
fstTuple = fst tuple
sndTuple = snd tuple

newArray = 1 : bar

newLol = take 10 (cycle "LOL ")
newLol2 = take 5 (cycle [1,2,3])

minFoo = minimum foobar

zipped = zip foo bar
get = zipped !! 2

isElem = get `elem` zipped
