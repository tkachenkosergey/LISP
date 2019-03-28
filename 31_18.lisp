Определите предикат,проверяющий, является ли аргумент одноуровневым списком.

(defun onelevel (A)
 (cond
   ((null A) T)
   ((and (atom (car A)) (onelevel (cdr A))))))
   
   Test:
   
   ;>(print (onelevel '(3 5 1)))
   ;>(print (onelevel '(3 (5 1))))
   
   ;T
   ;NIL
   
