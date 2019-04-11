Определите функцию, разделяющую исходный список на два подсписка. 
Впервый из них должны попасть элементы с нечетными номерами, во второй элементы с четными номерами.

(defun evennoteven ( lst )
    (if lst
        (list
            (cons (car lst)  (car (evennoteven (cddr lst))))
            (if (cadr lst)
                (cons (cadr lst)   (cadr (evennoteven (cddr lst))))
            )
        ) 
    ) 
)


Test;

;>(print (evennoteven '(7 4)))
;>(print (evennoteven '(10 2 3 2 5 8)))
;>(print (evennoteven '(1 5 3 4 4 6 7 1 4)))

;((7) (4))
;((10 3 5) (2 2 8))
;((1 3 4 7 4) (5 4 6 1)) 


