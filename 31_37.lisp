Определите функцию пересечения , формирующую пересечение двух множеств, т. е. множеств из общих элементов.
(defun _intersection (w v)
  (cond ((null w) nil)
        ((member (car w) v) (cons (car w) (_intersection (cdr w) v)))
        ((_intersection (cdr w) v))))
(trace _intersection)

Test:
;>(print (_intersection '(a s d f g h ) '(q a w s e d r)))
;>(print (_intersection '( ) '(q a w s e d r)))


;(A S D)
;NIL
