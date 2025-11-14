#lang racket/base
(define (Pow number power)
 (define(iter power result)
   (if(= power 0)
      result
      (iter(- power 1)(* number result))))
  (if(< power 0)
     (/ 1 (iter(- power)1))
  (iter power 1)))
(Pow 5 -3)