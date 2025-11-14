#lang racket
(define(euler-n n)
  (define(iter k fak sum)
    (if(= n 0)
       0
       (if(> k n)
          sum
          (iter (+ k 1)(* fak k)(+ sum (/ 1 fak))))))
    (iter 1 1 1))
  (euler-n 6)        