. Определите фильтр (УДАЛйЬ-ЕСЛИ-НЕ пред список), удаляющий из списка список
все элементы, которые не обладают свойством, наличие которого проверяет
предикат пред

(defun УДАЛТЬ-ЕСЛИ-НЕ (prop lst)
    (mapcan #'(lambda (x) (if (funcall prop x) (list x)))  lst )
)

(print ( УДАЛТЬ-ЕСЛИ-НЕ #'oddp '(1 2 3 4 5 6 8 9)) ) ;=>(1 3 5 9)
(print ( УДАЛТЬ-ЕСЛИ-НЕ #'atom '(1 2 3 (4) 5 (6) 8 9)) ) ;=>(1 2 3 5 8 9)