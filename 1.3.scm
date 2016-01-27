; SICP exercise 1.3
; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers
(define (square a)
  (* a a)
  )

(define (sumsquares a b)
  (+ (square a) (square b))
  )

(define (getLrg a b)
  (if (> a b) a b)
  )

(define (mmax a b)
  (if (> a b) a b)
  )
(define (mmin a b)
  (if (< a b) a b)
  )


(define (sumLrg2 a b c)
  (sumsquares (mmax a b) (mmax (mmin a b) c))
  )

(sumLrg2 15  5 10)
(sumLrg2 5  10 15)
(sumLrg2 10 15  5)
; 325, 325, 325