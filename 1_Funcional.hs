-- --------------------------------------------------------------------------
-- Ejercicio 1. 
-----------------------------------------------------------------------------
-- Definir la función "factorial", el producto se obtiene con la multiplicacion
-- desde 1 hasta "n" tal que "factorial n" es el factorial de n.
-- 
-- Por ejemplo,
--    factorial 5  ==  120
-- ---------------------------------------------------------------------
factorial :: Integer -> Integer
factorial n = product [1..n]
