(define two-in-a-row?
  (lambda (lat)
    (letrec
        ((W (lambda (a lat)
              (cond
                ((null? lat) #f)
                (else (or (eq? (car lat) a)
                          (W (car lat)
                             (cdr lat))))))))
      (cond
        ((null? lat) #f)
        (else (W (car lat) (cdr lat)))))))

; > (two-in-a-row? `(Italian sardines spaghetti parsley))
; #f
; > (two-in-a-row? `(Italian sardines sardines spaghetti parsley))
; #t
; > (two-in-a-row? `(Italian sardines more sardines spaghetti))
; #f
; > (two-in-a-row? `(b d e i i a g))
; #t
