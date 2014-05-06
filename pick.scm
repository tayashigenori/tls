(load "./common/sub1.scm")
(load "./one.scm")

(define pick
  (lambda (n lat)
    (cond
      ((one? n) (car lat))
      (else (pick (sub1 n) (cdr lat))))))

; > (pick 4 `(lasagna spaghetti ravioli macaroni meatball))
; macaroni
; > (pick 0 `(a))
; ???