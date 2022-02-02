#lang racket

; (list.set lst n x): L X N X N -> L
; returns list with n-th element replaced by x
; : size(lst)=0 -> ()
; : n=0         -> (x . lst[1..end])
; : else        -> (lst[0] . (list.set lst[1..end] n-1 x))
(define list.set
  (lambda (lst n x)
    (if (null? lst)
        (list)
        (if (zero? n)
            (cons x (cdr lst))
            (cons (car lst) (list.set (cdr lst) (- n 1) x))))))
