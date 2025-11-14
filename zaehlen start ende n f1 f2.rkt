#lang racket/base
(define(zaehlen start ende n f1 f2)
  
  (define(iter x n)
  (if(or(<= n 0)
        (> x ende))
        #f
     (if(or (and(f1 x)(not(f2 x)))
            (and(f2 x)(not(f1 x))))
        (if(= n 1)
           x
           (iter (+ x 1)(- n 1)))
       (iter (+ x 1) n ))))
  (iter start n))
        (define(teilt5 x)(= 0(remainder x 5)))
        (zaehlen 1 100 10 odd? teilt5)