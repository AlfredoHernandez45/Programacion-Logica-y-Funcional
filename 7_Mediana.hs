-- --------------------------------------------------------------------------
-- Ejercicio 7.
-----------------------------------------------------------------------------
-- Define la funcion "mediana", la mediana de una lista de valores es el valor de 
-- la lista que ocupa el lugar central de los valores ordenados de menor
-- a mayor. Si el número de datos es impar se toma como valor de la
-- mediana el valor central. Si el número de datos es par se toma como
-- valor de la mediana la media aritmética de los dos valores
-- centrales.
-- 
-- Por ejemplo:
--    mediana [2,3,6,8,9]    ==  6.0
--    mediana [2,3,4,6,8,9]  ==  5.0
--    mediana [9,6,8,4,3,2]  ==  5.0
-- ---------------------------------------------------------------------
 
import Data.List
import Test.QuickCheck

mediana :: (Floating a, Ord a) => [a] -> a
mediana xs | odd n  = ys !! i
           | even n = media [ys !! (i-1), ys !! i]
    where ys = sort xs
          n  = length xs
          i  = n `div` 2