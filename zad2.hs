funkcja :: (Ord a, Num a) => a -> a -> a -> a
funkcja x y z = maximum [x, y, z] - minimum [x, y, z]

main :: IO ()
main = do
    zmienna1 <- getLine
    zmienna2 <- getLine
    zmienna3 <- getLine
    let x = read zmienna1 :: Integer
        y = read zmienna2 :: Integer
        z = read zmienna3 :: Integer
    putStrLn $ "roznica: " ++ show (funkcja x y z)