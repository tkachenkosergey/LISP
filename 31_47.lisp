Определите функцию УДАЛИТЬ-ВСЕ-СВОЙСТВА, которая удаляет все свойства символа.

(defun удалить-все-свойства (a)
    (setf (symbol-plist a) nil))


(setf (get 'apple 'color) 'green) 
(setf (get 'apple 'size) 'big) 
(setf (get 'apple 'weight ) 4) 

(print (symbol-plist  'apple )) ; => (WEIGHT 4 SIZE BIG COLOR GREEN) 


(удалить-все-свойства   'apple) 
(print (symbol-plist  'apple )) ; =>  NIL
