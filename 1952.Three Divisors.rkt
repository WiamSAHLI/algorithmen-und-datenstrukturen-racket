#lang racket/base
(define(three-divisors num)
  (define(iter n counter)
    (if (> n num)
       (= counter 3)
       (if (=(remainder num n)0) 
         (iter (+ n 1)(+ counter 1))
         (iter (+ n 1)counter))))
        
        (iter 1 0))
 (three-divisors 25)