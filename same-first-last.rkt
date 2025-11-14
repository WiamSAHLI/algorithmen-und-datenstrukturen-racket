#lang racket/base
 (define(same-first-last? n)
  (define(last-num n)
    (if(< n 10)
       n
       (last-num (quotient n 10))))
(if(= (last-num n)(remainder n 10))
   #t
   #f))
(same-first-last? 5055)