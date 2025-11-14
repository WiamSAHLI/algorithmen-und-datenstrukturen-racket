#lang racket/base
;solution 1:
(define(binaere-umrechner n)
 (define(iter n position result)
   (if(= n 0)
      result
      (iter (quotient n 10)
            (* position 2)
            (+ result(* position(remainder n 10))))))
      (iter n 1 0))
(binaere-umrechner 1001)
;solution 2:
(define(binaer-umrechner bin)
(define(iter n position sum)
  (if(= n 0)
     sum
     (iter (quotient n 10)
           (+ position 1)
           (+ sum(* (remainder n 10)(expt 2 position))))))
      (iter bin 0 0))    


(binaer-umrechner 1001)