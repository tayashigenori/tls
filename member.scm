(define member?
  (lambda (a lat)
    ((letrec
         ((yes? (lambda (l)
                  (cond
                    ((null? l) #f)
                    ((eq? (car l) a) #t)
                    (else (yes? (cdr l)))))))
       yes?)
     lat)))

; (member? `liver `(bagels and lox))
; #f
; > (member? `sardines `(Italian sardines spaghetti parsley))
; #t
; > (member? `ice `(salad greens with pears brie cheese frozen yogurt))
; #f
