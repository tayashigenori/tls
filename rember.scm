(define rember
  (lambda (a lat)
    (letrec
        ((R (lambda (lat)
              (cond
                ((null? lat) (quote ()))
                ((eq? (car lat) a) (cdr lat))
                (else (cons (car lat)
                            (R (cdr lat))))))))
      (R lat))))

; > (rember `sausage `(pizza with sausage and bacon))
; (pizza with and bacon)
