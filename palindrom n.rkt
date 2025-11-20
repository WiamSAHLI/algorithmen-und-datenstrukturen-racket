#lang racket/base
(define(reverse-num n)
 (define (iter num reverse)
   (if(= num 0)
      reverse
    (iter(quotient num 10)
        (+ (remainder num 10) (* reverse 10)))))
    (iter n 0))

(define(palindrom n)
  (if(< n 0)
     #f
  (if(=  n (reverse-num n))
     #t
    (abs (- n (reverse-num n))))))
(palindrom 9889)
(palindrom 7610)
(palindrom -1881)