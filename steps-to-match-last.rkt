#lang racket/base
(define(steps-to-match-last n)
(define(first-digit n)
    (if(< n 10)
       n
       (first-digit (quotient n 10))))
  (let*((first(first-digit n))
        (last(remainder n 10)))
   
     
     (modulo (+ (- first last) 10) 10)))
   
  (steps-to-match-last 4567 )
 

  (steps-to-match-last 4897 )
  (steps-to-match-last 7893) 


