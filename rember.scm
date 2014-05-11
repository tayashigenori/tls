(define rember
  (lambda (a lat)
    (letrec
        ((R (lambda (lat)
              (cond
                ((null? lat) (quote ()))
                ((eq? (car lat) a) (cdr lat))
                (else (cons (car lat)
                            (R (cdr lat))))))))
      (R lat))))

; > (rember `sausage `(pizza with sausage and bacon))
; (pizza with and bacon)

(define rember-beyond-first
  (lambda (a lat)
    (letrec
        ((R (lambda (lat)
              (cond
                ((null? lat) (quote ()))
                ((eq? (car lat) a)
                 (quote ()))
                (else (cons (car lat)
                            (R (cdr lat))))))))
      (R lat))))

; > (rember-beyond-first `roots `(noodles
;                                 spaghetti spatzle bean-thread
;                                 roots
;                                 potatoes yam
;                                 others
;                                 rice))
; (noodles spaghetti spatzle bean-thread)
; > (rember-beyond-first (quote others) `(noodles
;                                         spaghetti spatzle bean-thread
;                                         roots
;                                         potatoes yam
;                                         others
;                                         rice))
; (noodles spaghetti spatzle bean-thread roots potatoes yam)
; > (rember-beyond-first (quote desserts) `(cookies
;                                           chocolate mints
;                                           caramel delight ginger snaps
;                                           desserts
;                                           chocolate mousse
;                                           vanilla ice cream
;                                           German chocolate cake
;                                           more desserts
;                                           gingerbreadman chocolate
;                                           chip brownies))
; (cookies chocolate mints caramel delight ginger snaps)
