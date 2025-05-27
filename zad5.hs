doubleAll :: [Int] -> [Int]
doubleAll xs = map (*2) xs

main :: IO ()
main = print (doubleAll [6, 9, 2137, 2, 6, 8, 420])