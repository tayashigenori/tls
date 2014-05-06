(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      ((eq? (car lat) a) #t)
      (else (member? a (cdr lat))))))

; (member? `liver `(bagels and lox))
; #f
; > (member? `sardines `(Italian sardines spaghetti parsley))
; #t
; > (member? `ice `(salad greens with pears brie cheese frozen yogurt))
; #f
