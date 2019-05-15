Определите функциональный предикат (НЕКОТОРЫй пред список), который ис-
тинен, когда, являющейся функциональным аргументом предикат пред исти-
нен хотя бы для одного элемента списка список.

(defun mypred (func  args)
             (mapcan func args)  
  )


(print (mypred #' zerop '(1 2 3 4) )) ;=> NIL
(print (mypred #' atom '(1 2 3 4) )) ;=> T 
(print (mypred #' zerop '(1 2 4 0) )) ;=> T
