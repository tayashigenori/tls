(load "o+.scm")

(define sum-of-prefixes
  (lambda (tup)
    (sum-of-prefixes-b 0 tup)))


; > (sum-of-prefixes `(2 1 9 17 0))
; (2 3 12 29 29)
; > (sum-of-prefixes `(1 1 1 1 1))
; (1 2 3 4 5)

(define sum-of-prefixes-b
  (lambda (sonssf tup) ; sum  of numbers seen so far
    (cond
      ((null? tup) (quote ()))
      (else (cons (o+ sonssf (car tup))
                  (sum-of-prefixes-b
                   (o+ sonssf (car tup))
                   (cdr tup)))))))

; > (sum-of-prefixes-b 0 `(1 1 1))
; (1 2 3)
