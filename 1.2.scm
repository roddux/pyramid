; SICP exercise 1.1
; convert the given calculation into prefix form
; (5+4+(2 - (3 - (6 +4/5)))) / (3*(6-2)*(2-7))

(/
	(+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
	(* 3 (- 6 2) (- 2 7))
)