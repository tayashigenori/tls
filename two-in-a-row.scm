(define two-in-a-row?
  (lambda (lat)
    (cond
      ((null? lat) ...)
      (else ...
       (two-in-a-row? (cdr lat))
       ...))))

; doesn't work yet