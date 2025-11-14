#lang racket/base
(define(rev-num zahl)
  (define(iter zahl reverse)
   (if(= zahl 0)
      reverse
   (iter(quotient zahl 10)(+(remainder zahl 10)(* reverse 10)))))
     (iter zahl 0))
(define(palindrom n)
  (if(= n (rev-num n))
     #t
     #f))
(palindrom 7610)