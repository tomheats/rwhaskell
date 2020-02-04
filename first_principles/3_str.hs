func :: (Num a, Num b) => a -> b -> b
func _ b = b

func' :: (Eq a, Num a) => a -> Bool
func' a = a == 3

func'' :: (Ord a, Num a) => a -> Bool
func'' a = a == 3
