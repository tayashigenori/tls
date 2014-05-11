(load "./intersect.scm")

(define intersectall
  (lambda (lset)
    (call-with-current-continuation
     (lambda (hop)
       (letrec
           ((A (lambda (lset)
                 (cond
                   ((null? (car lset))
                    (hop (quote ())))
                   ((null? (cdr lset))
                    (car lset))
                   (else (I (car lset)
                            (A (cdr lset)))))))
            (I (lambda (s1 s2)
                 (letrec
                     ((J (lambda (s1)
                           (cond
                             ((null? s1) (quote ()))
                             ((member? (car s1) s2)
                              ;(J (cdr s1)))
                              (cons (car s1)
                                    (J (cdr s1))))
                             ;(else (cons (car s1)
                             ;            (J (cdr s1))))))))
                             (else (J (cdr s1)))))))
                   (cond
                     ((null? s2) (hop (quote ())))
                     (else (J s1)))))))
         (cond
           ((null? lset) (quote ()))
           (else (A lset))))))))


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
