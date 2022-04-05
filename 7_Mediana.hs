-- --------------------------------------------------------------------------
-- Ejercicio 7.
-----------------------------------------------------------------------------
-- Define la funcion "mediana", la cual recibe un arreglo, o separa los 
-- impares al dejar el primer numero de la lista, se divide entre 2 para 
-- al final eliminarlo, o los numeros iguales los elimina y hace 
-- recursividad mandando el siguiente numero seguido se organiza y se 
-- obtiene la longitud del arreglo, la longitud se divide entre 2 y se le 
-- resta uno 
-- 
-- Por ejemplo:
--    mediana [2,3,6,8,9]    ==  6.0
--    mediana [2,3,4,6,8,9]  ==  5.0
--    mediana [9,6,8,4,3,2]  ==  5.0
-- ---------------------------------------------------------------------
 
import Data.List

media :: Floating a => [a] -> a
media xs = sum xs / genericLength xs

mediana :: (Floating a, Ord a) => [a] -> a
mediana xs | odd n  = head $ drop (n `div` 2) ys
           | even n = media $ take 2 $ drop i ys
    where ys = sort xs
          n  = length xs
          i  = (n `div` 2) - 1
