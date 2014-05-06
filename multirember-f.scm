(define multirember-f
  (lambda (test?)
    (letrec
        ((m-f
          (lambda (a lat)
            (cond
              ((null? lat) (quote ()))
              ((test? (car lat) a)
               (m-f a (cdr lat)))
              (else
               (cons (car lat)
                     (m-f a (cdr lat))))))))
      m-f)))


; > ((multirember-f eq?) `tuna `(shrimp salad tuna salad and tuna))
; (shrimp salad salad and)
