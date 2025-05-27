# Paradygmaty Programowania
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


  - n - bieżąca wartość.

  
  - 0 - wartość **F0** dla ciągu Fibonacciego.

  
  - 1 - wartość **F1**.

  
Gdzie:


  - Jeśli pierwszy argument funkcji to **0**, zwracamy **a**, trzeci pomijamy bo "**_**".

  
  - A dla każdego kolejnego **n** większego od 0, zmniejszamy licznik i przesuwamy dwa ostatnie wyrazy, aż dojdziemy do żądanego przez nas wyrazu.
```Huskell
fib n = func n 0 1
  where
    func 0 a _ = a
    func n a b = func (n - 1) b (a + b)
```

Funckja main.

Pobieramy od użytkownika wartość do zmiennej **input** za pomocą **getLine**, następnie przypisujemy tę wartość do zmiennej **n** ("**::Integer**" mówi że typ musi być dokładnie intem).

Na koniec wypisujemy funkcję za pomocą **putStrLn** i **++ show(...)**.
```Huskell
main :: IO ()
main = do
    input <- getLine
    let n = read input :: Integer
    putStrLn $ "ciag = " ++ show (fib n)
```


## ZAD. 2
### Napisz funkcję, która pobiera trzy liczby i zwraca różnicę między największą i najmniejszą liczbą.
### >>> minmax 7 1 4
### 6
```Huskell
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
```
Deklaracja funkcji.


"nazwa" :: "ograniczenia typów (Ord a, oznacza że typ musi wspierać porównania jak np.: **<**, **>**. A Num a, że typ musi być numeryczny)" => "bierze trzy argumenty tego samego typu **a** i zwraca wynik też typu **a**". 
```Huskell
funkcja :: (Ord a, Num a) => a -> a -> a -> a

```
Ciało funkcji.


Funkcja tworzy listę trzech elementów **x**, **y** i **z** i odejmuję najmniejszą zmienną z trzech **minimum [x, y, z]** od największej **maximum [x, y, z]**
```Huskell

funkcja x y z = maximum [x, y, z] - minimum [x, y, z]
```











