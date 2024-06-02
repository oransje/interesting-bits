import System.Environment (getArgs)
import Data.Char (chr, ord)

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ processArg args

processArg :: [String] -> String
processArg arg
  | null arg   = "IMAGINE ALL THE PEOPLE... TYPING IN UPPERCASE..."
  | otherwise  = toUpper $ foldr (++) "" arg

toUpper :: String -> String
toUpper = map sub32Ord

sub32Ord :: Char -> Char
sub32Ord c
  | c >= 'a' && c <= 'z' = chr $ ord c - 32
  | otherwise            = c
