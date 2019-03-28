

(defun quatom (str)
 (cond
 ((null str) 0)
 ((atom str) 1)
 (T (+ (quatom (car str)) (quatom (cdr str))))))
