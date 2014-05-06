(define sum-of-prefixes
  (lambda (tup)
    (cond
      ((null? tup) ...)
      (else ...
       (sum-of-prefixes (cdr tup))
       ...))))

; doesn't work yet