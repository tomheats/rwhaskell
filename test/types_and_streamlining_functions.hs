--defining new data types
data BookInfo = Book Int String [String]
                deriving (Show)

--pattern matching
bookId (Book id title authors) = id

--type synonyms
type CardHolder = String
type CardNumber = String
type Address = [String]
type CustomerID = Int

--algebraic data types (more than one value constructor)
data BillingInfo = CreditCard CardNumber CardHolder Address
                  | CashOnDelivery
                  | Invoice CustomerID
                    deriving (Show)

--pattern macthing
myCard (CreditCard numb holder addr) = numb
-- ghci> myCard (CreditCard "2" "Dom" ["Hohensteg"])

--wild card pattern
nicerCard (CreditCard numb _ _) = numb

--record syntax
data Customer = Customer {
    customerID :: CustomerID
  , customerName :: String
  , customerAddress :: Address
}   deriving (Show)

--create value of type Customer
customer1 = Customer 212489 "Dominik" ["Hohensteg"]

--accessing
--ghci> customerName customer1

--parameterised types
data Maybe a = Just a
              | Nothing

--reporting errors
mySecond :: [a] -> a
mySecond xs = if null (tail xs)
              then error "list is empty"
              else head (tail xs)

--TESTING


type Balance = Float
type Amount = Float
type Sender = [String]
type Recipient = [String]

currBalance :: Float
currBalance = 100

data Transaction = Transaction {
  balance :: Balance,
  amount :: Amount,
  sender :: Sender,
  recipient :: Recipient
}
  deriving (Show)

transaction1 = Transaction currBalance 4.5 ["Dominik"] ["Manuel"]
transaction2 = Transaction currBalance 10 ["Dominik"] ["Manuel"]
transaction3 = Transaction currBalance 48 ["Dominik"] ["Manuel"]

makeTx :: Amount -> [String] -> [String] -> Transaction
makeTx amount sender recipient = if correct then newTransaction
                                    else error "Your transaction is not valid"
                                    where correct :: Bool
                                          correct = if amount > currBalance then False
                                                    else True

                                          newTransaction :: Transaction
                                          newTransaction = Transaction newBalance amount sender recipient

                                          newBalance :: Float
                                          newBalance = currBalance - amount

fetchTx :: [Transaction]
fetchTx = [makeTx 34 ["Dom"] ["Manuel"]]

fetchTx2 :: [Transaction]
fetchTx2 = [makeTx 2.3 ["Dom"] ["David"]]


data Block = Block {
  index :: String,
  metaData :: [Transaction]
}
  deriving (Show)

block1 = Block "1" fetchTx
block2 = Block "2" fetchTx2

chain :: [Block]
chain = [block1, block2]

chainLength :: Int
chainLength = length chain
