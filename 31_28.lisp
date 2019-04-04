Определите функцию, вычисляющую, сколько всего атомов в списке (списочной структуре).

  
(defun atomcount (expr)
    (cond
     ((null expr) 0)
     ((atom expr) 1)
     (T (+ (atomcount (car expr)) (atomcount (cdr expr))))))

Test:

;>(print (atomcount `(1 2 4)))
;>(print (atomcount `()))
;>(print (atomcount `(1)))


;> (3)
;> (0)
;> (1)


