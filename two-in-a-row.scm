(define two-in-a-row?
  (lambda (lat)
    (cond
      ((null? lat) #f)
      (else
       (is-first-b? (car lat) (cdr lat))))))

; > (two-in-a-row? `(Italian sardines spaghetti parsley))
; #f
; > (two-in-a-row? `(Italian sardines sardines spaghetti parsley))
; #t
; > (two-in-a-row? `(Italian sardines more sardines spaghetti))
; #f

(define is-first?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (eq? (car lat) a)))))

(define is-first-b?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) a)
                (two-in-a-row? lat))))))
