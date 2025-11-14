#lang racket
(define(last n)
  (if(< n 10)
     n
     (last(quotient n 10))))
(define(palindrom-steps n)
(define(iter first count)
 
  (if(= first (last n))
     count
     (iter(remainder(+ first 1) 10) (+ count 1))))
 (iter (remainder n 10)0))
  (palindrom-steps 123)