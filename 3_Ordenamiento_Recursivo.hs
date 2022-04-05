-- --------------------------------------------------------------------------
-- Ejercicio 3.
-----------------------------------------------------------------------------
-- Define la funcion la cual recibe un arreglo [], la lista xs es ordenada
-- utiliznado el algoritmo de seleccion, pero usando un acomulador

ordenaPorSeleccion :: Ord a => [a] -> [a] 
ordenaPorSeleccion [] = []
ordenaPorSeleccion (x:xs) = aux xs x []
    where aux [] m r = m : ordenaPorSeleccion r
          aux (x:xs) m r | x < m     = aux xs x (m:r)
                         | otherwise = aux xs m (x:r)