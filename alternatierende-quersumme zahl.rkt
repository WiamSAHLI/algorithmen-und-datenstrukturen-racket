#lang racket/base
(define(alternatierende-quersumme zahl)
 (define (iter zahl sum  vorzeichen)
   (if(= zahl 0)
      sum
      (iter(quotient zahl 10)
      (+ sum(* vorzeichen(remainder zahl 10)))
      (* -1 vorzeichen ))))
(iter zahl 0 1))
