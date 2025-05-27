sumOfDigits :: Int -> Int
sumOfDigits n = sum (map (\x -> read [x]) (show (abs n)))

main :: IO ()
main = print (sumOfDigits 2137)