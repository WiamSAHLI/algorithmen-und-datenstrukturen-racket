#lang racket/base



(define (fib n)
 (cond ((= n 0) 0)
 ((= n 1) 1)
 (else (+ (fib (- n 1)) (fib (- n 2))))))

(fib 9)

(define(fib2 n)
  
  (define(fib-iter a b zaehler)
    
    (if(= zaehler 0)
       
       b
       
       (fib-iter (+ a b)a(- zaehler 1))))
  
  (fib-iter 1 0 n))



(fib2 9)
