#lang racket/base
 
(define(summe-der-ziffer n)
(define(iter n sum)
  (if(= n 0)
     sum
     (iter(quotient n 10)
          (+ sum(remainder n 10)))))

      (iter n 0))

(summe-der-ziffer 1234)


































  