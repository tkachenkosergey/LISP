Определите лисповскую форму (IF условие p q) в виде макроса


(defmacro moyif (условие р q)
    `(if ,условие ,р ,q))
    
(setq x '(a b c))
(print (moyif (atom x) 'yes 'no)) ;NO
(print (moyif (listp x) 'yes 'no)) ;YES
