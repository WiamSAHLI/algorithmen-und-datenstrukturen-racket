#lang racket/base
(define(einstellige-quersumme zahl)
  (define(iter zahl sum)
    (if(= zahl 0)
     (if(> sum 9)
        (iter (quotient sum 10)(+(remainder sum 10)))
        sum)
     (iter (quotient zahl 10)(+ sum (remainder zahl 10)))))
    (iter zahl 0))

(einstellige-quersumme 687)


