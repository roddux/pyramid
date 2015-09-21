(define (inList? val lst) 
  (if (null? lst)
      (display "nah\n")
      (if (eq? val (car lst))
          (display "yeh\n")
          (inList? val (cdr lst))
          )
      )
  )

(define (fib limit) 
  (define (fibr toN current next)
    (if (eq? toN 0) ; if we've hit the limit
        (begin
          (display current) ; show final iteration
          (gr (/ next current)) ; display golden ratio approximation
          )
        (fibr (- toN 1) next (+ current next))
        )
    )
  (define (gr num)
    (display "\nGolden ratio approximation: ")
    (display num)
    (display "\n")
    )
  (fibr limit 0 1)
  )

(inList? "a" '("c" "a" "r"))
(inList? "x" '("c" "a" "r"))
(fib 55)