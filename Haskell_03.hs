Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с четными номерами

f :: [Integer]  -> [Integer] 
f [ ] = [ ]
f [a] = [a]
f (a:b:t) = a :f t

main = print $ f [1 , 2, 3 , 4 , 5] ->[1,3,5]
