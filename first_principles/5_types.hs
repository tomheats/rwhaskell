-------QUERYING AND READING TYPES--------------
-- (->) is the type constructor for functions
--it takes arguments but has no data constructors
--the value of type (->) is the function. Functions are values.

--type of length: Foldable t => t a -> Int

--TYPECLASS CONSTRAINED TYPE VARIABLES
--() allow us to use infix functions as prefix
--prelude> :t (+)
-- Num a => a -> a -> a

--Num and Fractional e.g. are typeclasses and not types.
--each typeclass offers a standard set of functions that can be used across several concrete types.
--When a typeclass is constraining a type variable, the variable could represent any of the
--types that have instances of that typeclass

--Num a => a means: "variable a can have any type provided it satisfies the properties of being a number"

--constrained means, that we still dont know the concrete type of a, but we know it can only be
--one of the types that have a Num instance:

--so we can make types more specific because Int and Double have instances of Num typeclass

--type signatures could have multiple typeclass constraints on one or more of the variables

--(Num a, Num b) => a -> b -> b
--or
--(Ord a, Num a) => a -> Ordering

--the constraints look like a tuple but they dont add another argument or appear as a tuple
--they actually represent a conjunction of constraints

-------CURRYING--------------

--in Haskell, all functions take 1 argument and return 1 result

--the (->) takes 2 types (left and right). one is the argument, one the result.

--the nesting of functions allow us to to accept multiple arguments but in reality it is only one
--which is being passed to the next one

--when there are "2 arguments" we apply our function to an argument, return a result (that is a function)
--and apply it to the second argument

addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

addTen = addStuff 5
fifteen' = addTen 5

--prelude> fifteen
--prelude> 15

--prelude> addTen 15
--prelude> 25

--prelude> addStuff 5 5
--prelude> 15

--the ability to apply only some of a functions arguments is described as partial application

--(->) is a type constructor and associates to the right
--so we can apply one argument of addStuff to a new function and the new one is for the second argument

--diffFunc :: a -> b -> c -> String
--is actually
--diffFunc :: a -> (b -> (c -> String))

--the first (most left) -> has the type a -> (b -> (c -> String)). So the argument is a and the
--result is b -> (c -> String)
--the second function has the type b -> (c -> String), so the argument is b and the result is c -> String
--the third function has the type c -> String, so the argument is c and the result is String

--manual currying and uncurry

--Haskell is curried by default but we can uncurry functions.
--uncurrying means un-nesting the functions and replacing the 2 functions with a tuple of 2 values

--(+) changes from:
-- Num a => a -> a -> a
--to:
-- Num a => (a, a) -> a

--Uncurried functions: One function, many arguments
--Curried functions: Many functions, one argument apiece

--you can also un-nest a function with lambda expressions

nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 31337

typicalCurriedFunction :: Integer -> Bool -> Integer
typicalCurriedFunction i b = i + (nonsense b)

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, b) = i + (nonsense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)
