#lang racket/base

(define(count-even num)
 (define (iter num i counter)
   (if(> num i)
     (if(=(modulo(+(quotient i 10)(remainder i 10)) 2)0)
        (iter num(+ i 1)(+ counter 1))
        (iter num (+ i 1) counter))
     counter))
     
  (iter num 1 0))
(count-even 30)