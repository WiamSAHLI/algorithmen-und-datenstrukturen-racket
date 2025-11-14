#lang racket/base

(define(sum-of-digits n)
(define(iter n sum)
  (if (= n 0)
      sum
      (iter (quotient n 10) (+ sum (remainder n 10)))))   
(iter n 0))

(define(count-even num)
 (define (iter num i counter)
   (if(>= num i)
     (if(=(modulo(sum-of-digits i) 2)0)
        (iter num(+ i 1)(+ counter 1))
        (iter num (+ i 1) counter))
     counter))
     
  (iter num 1 0))

(count-even 910)


   