; SICP exercise 1.5
; To test whether the interpreter is using applicative or normal-order
; evaluation, Ben has written the following code

(define (p) (p))

(define (test x y)
(if (= x 0)
	0
	y))

(test 0 (p))

; For a normal-order interpreter, Ben will observe that the code completes
; because the (p) is never used in the body of the (test) function and so is
; never reduced

; For an applicative-order interpreter, Ben will observe that the interpreter
; will loop indefinitely, due to attempting to expand (p) to (p).
