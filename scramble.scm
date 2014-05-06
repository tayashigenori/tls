(load "pick.scm")

(define scramble-b
  (lambda (tup rev-pre) ; reversed prefix
    (cond
      ((null? tup) (quote ()))
      (else
       (cons (pick (car tup)
                   (cons (car tup) rev-pre))
             (scramble-b (cdr tup)
                         (cons (car tup) rev-pre)))))))

