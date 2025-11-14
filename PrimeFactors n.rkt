#lang racket/base
(define(prime n)
  (define(iter teiler)
    (if(< teiler n)
      (if(=(remainder n teiler)0)
          #f
          (iter(+ teiler 1)))
      #t))
  (if(< n 2)  ;0 and 1 are not primes
         #f
  (iter 2)))
          

(define(PrimeFactors n)
  (define(iter y counter)
    (if(< y n)
     (if(and(=(remainder n y)0)
            (prime y))
  
       (iter (+ y 1)(+ counter 1))
       (iter (+ y 1) counter))
     
     counter))
  
    (iter 2 0))
    (PrimeFactors 60)   