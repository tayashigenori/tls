(load "./member.scm")

(define union
  (lambda (set1 set2)
    (letrec
        ((U (lambda (set)
              (cond
                ((null? set) set2)
                ((member? (car set) set2)
                 (U (cdr set)))
                (else (cons (car set)
                            (U (cdr set))))))))
      (U set1))))

; > (union `(stewed tomatoes and
;                   macaroni casserole)
;          `(macaroni and cheese))
; (stewed tomatoes casserole macaroni and cheese)
; > (union `(tomatoes and macaroni casserole) `(macaroni and cheese))
; (tomatoes casserole macaroni and cheese)
