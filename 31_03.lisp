Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.

(defun rep (&key lst  obj  change)
    ((lambda ( x y )      
            (cond   
                    ((null lst) nil)
                    (( eq x obj) (cons change (rep :lst y  :obj obj  :change change)))
                    ((listp x) (cons (rep :lst x :obj obj  :change change) (rep :lst y :obj obj  :change change)))
                    (t (cons x (rep :lst y :obj obj  :change change)))))  
    (car lst)
    (cdr lst ))) 
 
Test:

;>(print (rep :lst '(1 2 3 1 1) :obj 1 :change 'a))
;>(print (rep :lst '((1 2 3) 4 5 6 1) :obj 1 :change 44))
;>(print (rep :lst '( 1 2 3 ((1 2 3) (1 2 3))) :obj 1 :change '( 4 5 )))


;(A 2 3 A A)
;((44 2 3) 4 5 6 44)
;((4 5) 2 3 (((4 5) 2 3) ((4 5) 2 3))) 
