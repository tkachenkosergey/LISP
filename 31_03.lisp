Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.

(defun rep (lst w r)
    (( lambda ( x y )      
             (cond ((null lst) nil)
                (( eq x w) (cons r (rep y w r)))
                ((listp x) (cons (rep x w r) (rep y w r)))
                (t (cons x (rep y w r))))   )  
        
    (car lst)  ( cdr lst ) ) ) 
