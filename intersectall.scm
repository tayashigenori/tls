(load "./intersect.scm")

(define intersectall
  (lambda (lset)
    (letrec
        ((intersectall
          (lambda (lset)
            (cond
              ((null? (cdr lset))
               (car lset))
              (else (intersect (car lset)
                               (intersectall
                                (cdr lset))))))))
      (cond
        ((null? lset) (quote ()))
        (else (intersectall lset))))))


; > (intersectall `((a b c) (c a d e) (e f g h a b)))
; (a)
; > (intersectall `((6 pears and)
;                   (3 peaches and 6 peppers)
;                   (8 pears and 6 plums)
;                   (and 6 prunes with lots of apples)))
; (6 and)
; > (intersectall `())
; ()
; > (intersectall `((a b c) ()))
; ()
