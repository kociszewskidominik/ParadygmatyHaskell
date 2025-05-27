--# Paradygmaty Programowania
### Łatwe zadania powtórzeniowe w języku Huskell.
## ZAD. 1
### Napisz funkcję wyznaczającą kolejne wyrazy ciągu Fibonacciego.
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
Deklaracja funkcji.


"nazwa funkcji" **::** "co bierze" **->** "co zwraca" 
```Huskell
fib :: Integer -> Integer
```
Ciało funkcji.


Do wykonania funkcji **fib** potrzebujemy pomocniczej funkcji **func** z trzema argumentami:


  · n - bieżąca wartość.

  
  · 0 - wartość **F0** dla ciągu Fibonacciego.

  
  · 1 - wartość **F1**.

  
Gdzie:


  · Jeśli pierwszy argument funkcji to **0**, zwracamy **a**, trzeci pomijamy bo "**_**".

  
  · A dla każdego kolejnego **n** większego od 0, zmniejszamy licznik i przesuwamy dwa ostatnie wyraz, aż dojdziemy do żądanego.
```Huskell
fib n = func n 0 1
  where
    func 0 a _ = a
    func n a b = func (n - 1) b (a + b)
```



