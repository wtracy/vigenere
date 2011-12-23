import Data.Char

ciphertext = "xfbhlqtlj"
key = [6,1,8,0,3,3,9,8,8,7,4]

doVigenere :: Char -> Int -> Char
doVigenere ciphertext key = 
  if rawResult >= (ord 'a')
    then chr rawResult
    else chr (rawResult + 26)
  where rawResult = ord ciphertext - key

vigenere :: [Char] -> [Int] -> [Char]
vigenere ciphertext key = zipWith doVigenere ciphertext key

main :: IO()
main = do
  putStrLn (vigenere ciphertext key)
