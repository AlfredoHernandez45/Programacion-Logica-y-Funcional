-- --------------------------------------------------------------------------
-- Ejercicio 10.
-----------------------------------------------------------------------------
-- Define las función "criba" la cual recibe un "Int" y regresa un "Int" e 
-- implementa recursividad para sacar los numeros primos, la función "primos"
-- llama a la funcion criba a la cual se le asigna un rango de 2 a 100 para 
-- imprimir numeros primos

primos :: [Int]
primos = criba [2 .. 100] --lista infinita de números naturales

--Implementamos la criba recursivamente
criba :: [Int] -> [Int]
criba (p:xs) = p : criba [x | x <- xs, x `mod` p /= 0]
