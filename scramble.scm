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


(define scramble
  (lambda (tup)
    (scramble-b tup (quote ()))))


; > (scramble `(1 1 1 3 4 2 1 1 9 2))
; (1 1 1 1 1 4 1 1 1 9)
; > (scramble `(1 2 3 4 5 6 7 8 9))
; (1 1 1 1 1 1 1 1 1)
; > (scramble `(1 2 3 1 2 3 4 1 8 2 10))
; (1 1 1 1 1 1 1 1 2 8 2)
