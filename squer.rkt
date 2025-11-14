#lang racket/base
(define(squer n)
(define(squer-suche n i)
      (if(<= (* i i) n)
   
         (if(=(* i i)n)
         #t
         (squer-suche  n (+ i 1)))
        #f))
     (squer-suche n 1))
(squer 16)