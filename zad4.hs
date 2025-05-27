onlyEven :: [Int] -> [Int]
onlyEven xs = filter even xs

main :: IO ()
main = print (onlyEven [1, 2, 3, 4, 5, 6, 2, 2137, 56, 12, 2])