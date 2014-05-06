(define member?
  (lambda (lat a)
    (cond
      ((null? lat) #f)
      ((eq? (car lat) a) #t)
      (else (member? (cdr lat) a)))))

; > (member? `(bagels and lox) `liver)
; #f
; > (member? `(Italian sardines spaghetti parsley) `sardines)
; #t
; > (member? `(salad greens with pears brie cheese frozen yogurt) `ice)
; #f
