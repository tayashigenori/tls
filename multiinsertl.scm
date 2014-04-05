(define multiinsertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      ((eq? (car lat) old)
       (cons new
             (cons old
                   (multiinsertL new old
                                 (cdr lat)))))
      (else (cons (car lat)
                  (multiinsertL new old
                                (cdr lat)))))))


; > (multiinsertL `fried `fish `(chips and fish or fish and fried))
; (chips and fried fish or fried fish and fried)
