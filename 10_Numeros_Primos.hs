-- Calcular los factores 
factores :: Int -> [Int]
factores n = [x | x <- [1..n], n `mod` x == 0]

-- Será primo solo si sus factores son 1 y él mismo
esPrimo :: Int -> Bool
esPrimo n = factores n == [1,n]

-- Filtrar los números naturales
primos :: [Int] -> [Int]
primos n = [x | x <- [2..n], esPrimo x]

--primos :: [Int]
--primos = criba [2..] --lista infinita de números naturales

--Implementamos la criba recursivamente
--criba :: [Int] -> [Int]
--criba (p:xs) = p : criba [x | x <- xs, x `mod` p /= 0]
