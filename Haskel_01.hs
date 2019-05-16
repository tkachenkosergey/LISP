Реализовать на языке Haskell функцию вычисления суммы элементов списка.

f :: [Integer] -> Integer

f (x) = foldl1 (+)  x

main = print $ f [1 , 10 , 6 , 4 , 5 , 8 ] ;=> 34
