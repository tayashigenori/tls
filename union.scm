(define union
  (lambda (set1 set2)
    (letrec
        ((U (lambda (set)
              (cond
                ((null? set) set2)
                ((M? (car set) set2)
                 (U (cdr set)))
                (else (cons (car set)
                            (U (cdr set)))))))
         (M? (lambda (a lat)
               (cond
                 ((null? lat) #f)
                 ((eq? (car lat) a) #t)
                 (else
                  (M? a (cdr lat)))))))
      (U set1))))

; > (union `(stewed tomatoes and
;                   macaroni casserole)
;          `(macaroni and cheese))
; (stewed tomatoes casserole macaroni and cheese)
; > (union `(tomatoes and macaroni casserole) `(macaroni and cheese))
; (tomatoes casserole macaroni and cheese)
