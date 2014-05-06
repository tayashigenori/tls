(load "./common/add1.scm")
(load "./y.scm")

(define olength
  (Y (lambda (length)
       (lambda (l)
         (cond
           ((null? l) 0)
           (else
            (add1 (olength (cdr l)))))))))

; > (olength `(hotdogs with mustard sauerkraut and pickles))
; 6
