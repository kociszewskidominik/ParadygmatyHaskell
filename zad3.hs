funkcja :: (Num a) => a -> a -> a
funkcja x y = x * x + y * y

main :: IO ()
main = do
    zmienna1 <- getLine
    zmienna2 <- getLine
    let x = read zmienna1 :: Integer
        y = read zmienna2 :: Integer
    putStrLn $ "suma kwadratow: " ++ show (funkcja x y)