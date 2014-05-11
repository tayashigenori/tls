(load "./member.scm")

(define intersect?
  (lambda (set1 set2)
    (cond
      ((null? set1) #f)
      (else (or (member? (car set1) set2)
                (intersect?
                 (cdr set1) set2))))))

(define intersect
  (lambda (set1 set2)
    (letrec
        ((I (lambda (set)
              (cond
                ((null? set) (quote ()))
                ((member? (car set) set2)
                 (cons (car set)
                       (I (cdr set))))
                (else (I (cdr set)))))))
      (I set1))))

; > (intersect? `(stewed tomatoes and macaroni) `(macaroni and cheese))
; #t

; > (intersect `(stewed tomatoes and macaroni) `(macaroni and cheese))
; (and macaroni)
