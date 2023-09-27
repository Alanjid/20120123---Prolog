(defvar *cuadrado* (lambda a b) (* a b))



(defun areaRectangulo ()
  (princ "Dame la altura del rectangulo:  ")
  (setq num1 (read))
  (princ "Dame la base del rectangulo:  ")
  (setq num2 (read))
  ;(* num1 num2)
  (format t " la salida es ~A" (funcall *cuadrado* num1 num2))
)