--data declaration
-- Bool' = Type constructor
--True or False = Data constructors
data Bool' = TrueTwo | FalseTwo

data Mood = Blah | Woot deriving Show
changeMood :: Mood -> Mood
changeMood Woot = Woot
changeMood _ = Blah

-- -------Numeric Datatypes ------------
--INTEGRAL NUMBERS
--(whole numbers, positive and negative)
--Int and Integer

--FRACTIONAL
--Float (rough accuracy, number of bits could shift),
--Double (double accuracy/precision; 2x more bits than float),
--Rational (represents ratio of 2 integers; not as efficient as scientific)
--Scientific (very precise; stores coefficient as Integer and exponent as Int)

--all have instance of TYPECLASS Num
--Num could be used for +, -, *, ..

--Prelude> minBound :: Int8
--         maxBound :: Int32

--Fractional e.g. is also a typeclass but types of Fractional also have to be types of typeclass Num

--Haskell has 6 categories of entities that have names
--variables & data constructors -> term-level (executes when program is running)
--type variables, type constructors, typeclasses -> type-level (used during static analyses & verification of program)
--modules

--------IF AND ELSE-----------------
--expression in then and else must be the same type

----------TUPLES -------------------
--store fixed amount of values
--each can be a different type
--in signatures you could write (,) or (a, b) or (, , , , ), thats a 5-tuple
--prelude> myTuple = (1::Integer, "blah")
--import Data.Tuple
--swap myTuple
--prelude> ("blah", 1)

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = if x == reverse x then True else False

--absolute value
myAbs :: Integer -> Integer
myAbs x = if x < 0 then x * (-1) else x

f:: (a,b) -> (c,d) -> ((b, d), (a,c))
f a b = ((snd a, snd b), (fst a, fst b))

x = (+)
f' xs = w `x` 2
  where w = length xs

--typeclasses are polymorphic

--data constructors have a type and can either be constant values (nullary) or take one or more
--arguments. Cat is a nullary data constructor for Pet and Dog is a data constructor that takes 1 argument

data Pet = Cat | Dog Name

--type constructors are not values and can only be used in type signatures
--Pet is the type constructor

--type alias
type Name = String

--Arity is the number of arguments a function accepts. all functions are 1-aritary
--and we handle accepting multiple arguments by nesting functions

--polymorphism means one of several, or any type
--it can either be parametric or constrained

--id is parametric function
--it works for any value
id' :: a -> a
id x = x

--isEqual is constrained/bounded. it just works for types which are instances of Eq typeclass
-- and not for all values
isEqual :: Eq a => a -> a -> Bool
isEqual x y = x == y
