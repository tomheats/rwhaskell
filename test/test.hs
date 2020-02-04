type Plz = String
type Location = [String]
type State = String

data Contact = Contact {
  plz :: Plz,
  location :: Location,
  state :: State
}
  deriving(Show)

data Individuum = Individuum {
  balance :: Float,
  name :: [String],
  income :: Float,
  contacts :: Contact
}
  deriving (Show)

globBalance :: Float
globBalance = 500

enterContact :: [String] -> Float -> Float
enterContact name income = if calculateBalance >= 0 && isCorrect then calculateBalance
                                  else error "Wrong data in input."

                                  where calculateBalance :: Float
                                        calculateBalance = globBalance - income

                                        isCorrect :: Bool
                                        isCorrect = if not(null(name)) then True
                                                    else False

indi1 = Individuum globBalance ["Dav"] 59 Contact "4284" ["FR"] "AUT"

getCurrentIndiList :: Individuum -> [Individuum]
getCurrentIndiList a = [a]
