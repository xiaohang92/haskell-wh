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

data GameState = XWon | OWon | Tie | InProgress
    deriving (Show, Eq)
-- Q#08
type Player = Square
type Row = [Square]
type Line = [Square]
type Board = [Row]

-- Q#09
getFirstPlayer :: Bool -> Player
getFirstPlayer isFirstPlayer = 
    if isFirstPlayer 
        then X
        else O

getFirstPlayer_ :: Bool -> Player
getFirstPlayer_ isFirstPlayer
    | isFirstPlayer = X
    | otherwise = O

-- Q#10
showGameState :: GameState -> String
showGameState gameState = case gameState of
    XWon -> "Player X won the game"
    OWon -> "Player O won the game"
    Tie -> "The game is a tie"
    InProgress -> "The game is in progress"

-- Q#11
switchPlayer :: Player -> Player
switchPlayer X = O
switchPlayer O = X
switchPlayer Empty = Empty

-- Q#12
showSquare :: Square -> String
showSquare X = "X"
showSquare O = "O"
showSquare Empty = "_"