(define two-in-a-row?
  (lambda (lat)
    (cond
      ((null? lat) #f)
      (else (two-in-a-row-b? (car lat)
                             (cdr lat))))))

; > (two-in-a-row? `(Italian sardines spaghetti parsley))
; #f
; > (two-in-a-row? `(Italian sardines sardines spaghetti parsley))
; #t
; > (two-in-a-row? `(Italian sardines more sardines spaghetti))
; #f
; > (two-in-a-row? `(b d e i i a g))
; #t

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

(define two-in-a-row-b?
  (lambda (preceding lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) preceding)
                (two-in-a-row-b? (car lat)
                                 (cdr lat)))))))
