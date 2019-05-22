Определите макрос, который возвращает свой вызов.

(defmacro self (&rest arg)
 `(quote (self ,@arg)))

(print (self 6 2 7)) -> (self 6 2 7) 
