Определите функцию, которая обращает список (a b c) и разбивает его на уровни (((c) b) a).

(defun F (lst)
  (if (null (cdr lst)) lst
      (list (F (cdr lst)) (car lst))))
      
Test:

;>(print (F '(6 2 5)))
;>(print (F '(6)))

;(((5) 2) 6)
;(6)
