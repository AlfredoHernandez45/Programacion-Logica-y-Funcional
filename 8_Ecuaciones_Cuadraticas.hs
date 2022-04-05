-- --------------------------------------------------------------------------
-- Ejercicio 7.
-----------------------------------------------------------------------------
-- Define la funcion "numeroDeRaices a b c", esta "a, b, c" para aplicarlos
-- a la ecuacion cuadratica ax^2 + bx + c = 0
-- Por ejemplo:
-- numeroDeRaices 2 0 3 = 0
-- numeroDeRaices 4 4 1 = 1
-- numeroDeRaices 5 23 12 = 2

numeroDeRaices a b c
    | d < 0         = 0
    | d == 0        = 1
    | otherwise     = 2
    where d = b^2-4*a*c 