; function defined for the purpose of explanation
(define mrpie
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      ((eq? (car lat) (quote pie))
       (mrpie (cdr lat)))
      (else (cons (car lat)
                  (mrpie (cdr lat)))))))

; > (multirember `cup `(coffee cup tea cup and hick cup))
; (coffee tea and hick)
; > (multirember `pie `(apple custard pie linzer pie torte))
; (apple custard linzer torte)

