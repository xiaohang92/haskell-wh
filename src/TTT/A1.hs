module TTT.A1 where

import Data.Char (toUpper)

-- Q#01
_SIZE_ :: Int
_SIZE_ = 3

-- Q#02
_DISPLAY_LOGO_ :: Bool
_DISPLAY_LOGO_ = True

-- Q#03
convertRowIndex :: Char -> Int
convertRowIndex rowIndex = fromEnum(toUpper rowIndex) - 65

-- Q#04
type Move = (Int, Int)
_INVALID_MOVE_ :: Move
_INVALID_MOVE_ = (-1, -1)

-- Q#05
_SEP_ :: String
_SEP_ = "_|_"

-- Q#06X

data Square = X | O | Empty
    deriving (Show, Eq)
-- Q#07

data GameState

-- Q#08

-- Q#09

getFirstPlayer = undefined

getFirstPlayer_ = undefined

-- Q#10

showGameState = undefined

-- Q#11

switchPlayer = undefined

-- Q#12

showSquare = undefined