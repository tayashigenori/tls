(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else
       (cond
         ((eq? (car lat) old) (cdr lat))
         (else (cons (car lat)
                     (insertR new old
                              (cdr lat)))))))))

(insertR `topping `fudge `(ice cream with fudge for dessert))