# Paradygmaty Programowania
### Łatwe zadania powtórzeniowe w języku Haskell.
## ZAD. 1
### Napisz funkcję wyznaczającą kolejne wyrazy ciągu Fibonacciego.
```haskell
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


"nazwa funkcji" `::` "co bierze" `->` "co zwraca" 
```haskell
fib :: Integer -> Integer
```
Ciało funkcji.


Do wykonania funkcji `fib` potrzebujemy pomocniczej funkcji `func` z trzema argumentami:


  - n - bieżąca wartość.

  
  - 0 - wartość **F0** dla ciągu Fibonacciego.

  
  - 1 - wartość **F1**.

  
Gdzie:


  - Jeśli pierwszy argument funkcji to `0`, zwracamy `a`, trzeci pomijamy bo `_`.

  
  - A dla każdego kolejnego `n` większego od 0, zmniejszamy licznik i przesuwamy dwa ostatnie wyrazy, aż dojdziemy do żądanego przez nas wyrazu.
```haskell
fib n = func n 0 1
  where
    func 0 a _ = a
    func n a b = func (n - 1) b (a + b)
```

Funkcja \main`.`

Pobieramy od użytkownika wartość do zmiennej `input` za pomocą `getLine`, następnie przypisujemy tę wartość do zmiennej `n` (`::Integer` mówi że typ musi być typu `Integer`).

Na koniec wypisujemy funkcję za pomocą `putStrLn` i `++ show(...)`.
```haskell
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
```haskell
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


"nazwa" :: "ograniczenia typów (Ord a, oznacza że typ musi wspierać porównania jak np.: `<`, `>`. A Num a, że typ musi być numeryczny)" => "bierze trzy argumenty tego samego typu `a` i zwraca wynik też typu `a`". 
```haskell
funkcja :: (Ord a, Num a) => a -> a -> a -> a
```
Ciało funkcji.


Funkcja tworzy listę trzech elementów `x`, `y` i `z` i odejmuję najmniejszą zmienną z trzech `minimum [x, y, z]` od największej `maximum [x, y, z]`.
```haskell
funkcja x y z = maximum [x, y, z] - minimum [x, y, z]
```

## ZAD. 3
### Zaimplementuj funkcję, która pobiera dwie liczby i znajduje sumę ich kwadratów.
### >>> sumOfSquares 3 4
### 25
```haskell
funkcja :: (Num a) => a -> a -> a
funkcja x y = x * x + y * y

main :: IO ()
main = do
    zmienna1 <- getLine
    zmienna2 <- getLine
    let x = read zmienna1 :: Integer
        y = read zmienna2 :: Integer
    putStrLn $ "suma kwadratow: " ++ show (funkcja x y)
```
Deklaracja funkcji.


"nazwa funkcji" :: "podobnie jak wyżej ograniczenie typu do numerycznego" => "bierze dwa argumenty typu `a` i zwraca ten sam typ `a`".
```haskell
funkcja :: (Num a) => a -> a -> a
```

Ciało funkcji.


Funkcja przyjmuje dwie zmienne `x` i `y`, następnie sumuję ich kwadraty.
```haskell
funkcja x y = x * x + y * y
```

## ZAD. 4
### Napisz funkcję onlyEven, która przyjmuje listę liczb całkowitych i zwraca listę zawierającą tylko liczby parzyste.
```haskell
onlyEven :: [Int] -> [Int]
onlyEven xs = filter even xs

main :: IO ()
main = print (onlyEven [1, 2, 3, 4, 5, 6, 2, 2137, 56, 12, 2])
```
Deklaracja funkcji.


"nazwa funkcji" :: "przyjmuję listę liczb całkowitych" => "zwraca listę liczb całkowitych"
```haskell
onlyEven :: [Int] -> [Int]
```
Ciało funkcji.


Funkcja przyjmuję jeden argument `xs`, i za pomocą funkcji `filter` i `even` z autmatycznie wbudowanej biblioteki, wybiera z listy tylko parzyste liczby.
```haskell
onlyEven xs = filter even xs
```
## ZAD. 5
### Napisz funkcję doubleAll, która przyjmuje listę liczb całkowitych i zwraca listę, w której każda liczba jest podwojona.
```haskell
doubleAll :: [Int] -> [Int]
doubleAll xs = map (*2) xs

main :: IO ()
main = print (doubleAll [6, 9, 2137, 2, 6, 8, 420])
```
## ZAD. 6
### Napisz funkcję sumOfDigits, która dla danej liczby całkowitej zwróci sumę jej cyfr.
```haskell
sumOfDigits :: Int -> Int
sumOfDigits n = sum (map (\x -> read [x]) (show (abs n)))

main :: IO ()
main = print (sumOfDigits 2137)
```
