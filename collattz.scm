; Collatz conjecture
; Take any natural number n. If n is even, divide it by 2 to get n / 2.
; If n is odd, multiply it by 3 and add 1 to obtain 3n + 1. Repeat.
(define (collatz n)
  (define (collatz-int cur count)
    (if (eq? 1 cur)
        (collatz-end count)
        (if (eq? 0 (modulo cur 2))
            (collatz-int (/ cur 2) (+ count 1))
            (collatz-int (+ (* 3 cur) 1) (+ count 1))
            )
        )
    )
  (define (collatz-end count)
    (display "Number: ")
    (display n)
    (display "\nCount: ")
    (display count)
    (display "\n")
    )
  (collatz-int n 0)
)

(collatz 6)