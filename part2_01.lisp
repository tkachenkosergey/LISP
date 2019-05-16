Определите FUNCALL через функционал APPLY.

(defun .funcall (f &rest args)
    (apply f args))

(print (.funcall '+ 4 10 19)) ;=>33
