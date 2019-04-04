Определите функцию, которая обращает список (a b c) и разбивает его на уровни (((c) b) a).

(defun split (lst)
  (if (null (cdr lst)) lst
      (list (split (cdr lst)) (car lst))))
      
Test:

;>(print (split '(6 2 5)))
;>(print (split '(6)))

;(((5) 2) 6)
;(6)
