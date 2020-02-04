--data declaration
-- Bool' = Type constructor
--True or False = Data constructors
data Bool' = True | False

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
