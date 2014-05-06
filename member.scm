(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) a)
                (member? a (cdr lat)))))))

; (member? `liver `(bagels and lox))
; #f
; > (member? `sardines `(Italian sardines spaghetti parsley))
; #t
