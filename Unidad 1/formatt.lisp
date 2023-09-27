(defun recorre (lista)
	(format t "~A-> ~%" (car lista))
	(if lista
		(recorre (cdr lista))
		)
	)
(recorre '(1 2 3 4 9))