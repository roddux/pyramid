; SICP exercise 1.4
; Observe that our model of evaluation allows for combinatinos whose operators
; are compond expressions. Use this observation to describe the behaviour of the
; following procedure

(define (a-plus-abs-b a b)
	((if (> b 0) + -) a b))
; If b is greater than 0, b is added to a
; If b is not greater than 0, b is subtracted from a

(a-plus-abs-b  5  5)
; b > 0 == (+ 5 5) == 10

(a-plus-abs-b -5  5)
; b > 0 == (+ -5 5) == 0

(a-plus-abs-b  5 -5)
; b < 0 == (- 5 -5) == 10