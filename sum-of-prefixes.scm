(load "o+.scm")

(define sum-of-prefixes
  (lambda (tup)
    (letrec
        ((S (lambda (sss tup)
              (cond
                ((null? tup) (quote ()))
                (else
                 (cons (o+ sss (car tup))
                       (S (o+ sss (car tup))
                          (cdr tup))))))))
      (S 0 tup))))


; > (sum-of-prefixes `(2 1 9 17 0))
; (2 3 12 29 29)
; > (sum-of-prefixes `(1 1 1 1 1))
; (1 2 3 4 5)
