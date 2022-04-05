-- --------------------------------------------------------------------------
-- Ejercicio 2. 
-----------------------------------------------------------------------------
-- Define la funcino "fib" tal que "fib n" es el n-esimo termino de la secuencia
-- utilizando al ecuacion fibonacci, se le asigna el resultado final a fib n

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)