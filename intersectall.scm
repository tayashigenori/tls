(load "./intersect.scm")

(define intersectall
  (lambda (lset)
    (letcc hop
      (letrec
          ((A (lambda (lset)
                (cond
                  ((null? (car lset))
                   (hop (quote ())))
                  ((null? (cdr lset))
                   (car lset))
                  (else
                   (intersect (car lset)
                              (A (cdr lset))))))))
        (cond
          ((null? lset) (quote ()))
          (else (A lset)))))))


; causes an error: "reference to undefined identifier: letcc"

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
; > (intersectall `((3 mangos and)
;                   (3 kiwis and)
;                   (3 hamburgers)))
; (3)
; > (intersectall `((3 steaks and)
;                   (no food and)
;                   (three baked potatoes)
;                   (3 diet hamburgers)))
; ()
; > (intersectall `((3 mangos and)
;                   ()
;                   (3 diet hamburgers)))
; ()
