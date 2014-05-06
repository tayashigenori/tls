(define multirember
  (lambda (a lat)
    (letrec
        ((mr (lambda (lat)
               (cond
                 ((null? lat) (quote ()))
                 ((eq? a (car lat))
                   (mr (cdr lat)))
                 (else
                   (cons (car lat)
                         (mr (cdr lat))))))))
      (mr lat))))

; > (multirember `cup `(coffee cup tea cup and hick cup))
; (coffee tea and hick)
; > (multirember `pie `(apple custard pie linzer pie torte))
; (apple custard linzer torte)
