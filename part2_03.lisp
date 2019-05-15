Определите функционал (APL-APPLY f x), который применяет каждую функцию fi списка (f1 f2 ... fn)
к соответствующему элементу списка x = (x1 x2 ... xn) и возвращает список, сформированный из результатов.


(defun APL-APPLY (f x)
  (cond ((null f) nil)
        ((null x) nil)
        (t (cons (funcall (car f) (car x)) (APL-APPLY (cdr f) (cdr x))))))

(print (APL-APPLY `(sin cos sin cos) `(0 1 2 3))) ;=> (0 0.5403023 0.9092974 -0.9899925)
