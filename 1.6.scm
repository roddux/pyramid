; SICP exercise 1.6
; Bob asks why can't 'if' just be defined with 'cond'?

(define (new-if predicate then-clause else-clause)
	(cond
		(predicate then-clause)
		(else else-clause)
	)
)

(new-if (= 2 3) 0 5)
; 5

(new-if (= 1 1) 0 5)
; 0

; Bob writes the following
(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)
	)
)

; This will not work, because an applicative-order interpreter would continually
; evaluate the sqrt-iter argument. If is a special form, so the else-clause (the
; sqrt-iter) is not called
