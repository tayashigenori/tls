(load "pick.scm")

(define scramble
  (letrec
      ((P (lambda (tup rp)
            (cond
              ((null? tup) (quote ()))
              (else (cons (pick (car tup)
                                (cons (car tup) rp))
                          (P (cdr tup)
                             (cons (car tup) rp))))))))
    (lambda (tup)
      (P tup (quote ())))))


; > (scramble `(1 1 1 3 4 2 1 1 9 2))
; (1 1 1 1 1 4 1 1 1 9)
; > (scramble `(1 2 3 4 5 6 7 8 9))
; (1 1 1 1 1 1 1 1 1)
; > (scramble `(1 2 3 1 2 3 4 1 8 2 10))
; (1 1 1 1 1 1 1 1 2 8 2)
