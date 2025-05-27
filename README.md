# Paradygmaty Programowania
### Łatwe zadania powtórzeniowe w języku Huskell
## ZAD. 1
### Napisz funkcję wyznaczającą kolejne wyrazy ciągu Fibonacciego.
```Huskell
fib :: Integer -> Integer
```
"nazwa funkcji" :: "co bierze" -> "co zwraca" 

```Huskell
fib :: Integer -> Integer
fib n = func n 0 1
  where
    func 0 a _ = a
    func n a b = func (n - 1) b (a + b)

main :: IO ()
main = do
    input <- getLine
    let n = read input :: Integer
    putStrLn $ "ciag = " ++ show (fib n)
```
