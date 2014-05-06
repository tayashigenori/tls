(define mr
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      ((eq? a (car lat))
       (mr (cdr lat)))
      (else
       (cons (car lat)
             (mr (cdr lat)))))))

(define multirember
  (lambda (a lat)
    (mr lat)))

; doesn't work!
; > (multirember `cup `(coffee cup tea cup and hick cup))
; reference to undefined identifier: a
