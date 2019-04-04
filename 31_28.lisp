Определите функцию, вычисляющую, сколько всего атомов в списке (списочной структуре).

(defun atom (str)
 (cond
 ((null str) 0)
 ((atom str) 1)
 (T (+ (atom (car str)) (atom (cdr str))))))

Test:


