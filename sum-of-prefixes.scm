(load "o+.scm")

(define sum-of-prefixes
  (lambda (tup)
    (cond
      ((null? tup) ...)
      (else ...
       (sum-of-prefixes (cdr tup))
       ...))))

; doesn't work yet

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
