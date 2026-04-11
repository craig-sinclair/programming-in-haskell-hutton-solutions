import Data.Char

let2int :: Char -> Char -> Int
let2int c base = ord c - ord base

int2let :: Int -> Char -> Char
int2let n base = chr (ord base + n)

shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c 'a' + n ) `mod` 26) 'a'
          | isUpper c = int2let ((let2int c 'A' + n ) `mod` 26) 'A'
          | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]