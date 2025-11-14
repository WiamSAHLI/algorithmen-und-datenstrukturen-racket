#lang racket/base
(define(einstellige-quersumme zahl)
  (define(iter zahl sum)
    (if(= zahl 0)
       sum
       (iter (quotient zahl 10)(+ sum (remainder zahl 10)))))
    (iter zahl 0))
(einstellige-quersumme 123)