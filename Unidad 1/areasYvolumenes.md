(defun areaCuadrado ()
  (princ "Dame la medida de uno de los lados del cuadrado:  ")
  (setq num1 (read))
  (* num1 num1)
)

(defun areaCubo ()
  (princ "Dame la medida de uno de los lados del cuadrado:  ")
  (setq num1 (read))
  (* num1 num1)
)

(defun areaRectangulo ()
  (princ "Dame la altura del rectangulo:  ")
  (setq num1 (read))
  (princ "Dame la base del rectangulo:  ")
  (setq num2 (read))
  (* num1 num2)
)

(defun areaTrianguloEQ ()
  (princ "Dame la medida de uno de los lados del triangulo:  ")
  (setq num1 (read))
  (* (/ (expt num1 2) 4) (sqrt 3))
)

(defun areaTrianguloI ()
  (princ "Dame la altura del triangulo:  ")
  (setq num1 (read))
  (princ "Dame la base del triangulo:  ")
  (setq num2 (read))
  (/ (* num1 num2) 2)
)

(defun areaTrianguloES ()
  (princ "Dame la medida del primer lado del triangulo:  ")
  (setq num1 (read))
  (princ "Dame la medida del segundo lado del triangulo:  ")
  (setq num2 (read))
  (princ "Dame la medida del tercer lado del triangulo:  ")
  (setq num3 (read))
  (setq semi (/ (+ num1 num2 num3) 2))
  (sqrt (* semi (- semi num1) (- semi num2) (- semi num3)))
)

(defun areaTrianguloR ()
  (princ "Dame la altura del triangulo:  ")
  (setq num1 (read))
  (princ "Dame la base del triangulo:  ")
  (setq num2 (read))
  (* (/ 1 2) (* num1 num2))
)

(defun areaCirculo ()
  (princ "Dame el radio del circulo:  ")
  (setq num1 (read))
  (* pi (expt num1 2))
)

(defun areaTrapecio ()
  (princ "Dame la medida de la base menor:  ")
  (setq num1 (read))
  (princ "Dame la medida de la base mayor:  ")
  (setq num2 (read))
  (princ "Dame la altura del trapecio:  ")
  (setq num3 (read))
  (* (/ (+ num1 num2) 2) num3)
)

(defun areaCono () ;9
  (princ "Dame el area superficial del cono:  ")
  (setq num1 (read))
  (princ "Dame la altura del cono:  ")
  (setq num2 (read))
  (setq L (sqrt (+ (expt num1 2) (expt num2 2))))
  (* pi num1 (+ num1 L))
)