; see 2db4db77d688a09d7e507f69717f8c1174436727

(define multirember
  (letrec
      ((mr (lambda (a lat)
             (cond
               ((null? lat) (quote ()))
               ((eq? (car lat) a)
                (mr a (cdr lat)))
               (else
                (cons (car lat)
                      (mr a (cdr lat))))))))
    mr))

; > (multirember `cup `(coffee cup tea cup and hick cup))
; (coffee tea and hick)
; > (multirember `pie `(apple custard pie linzer pie torte))
; (apple custard linzer torte)
