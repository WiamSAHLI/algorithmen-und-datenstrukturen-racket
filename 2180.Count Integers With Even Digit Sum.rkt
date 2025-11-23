#lang racket/base
(define(sum-digits n)
  (define(iter n add)
  (if(= n 0)
     add
   (iter(quotient n 10)
          (+ add(remainder n 10)))))
  (iter n 0))

(define(count-integers num)
(define(iter n count)
    (if(> n num)
      count
    (if(=(remainder(sum-digits n) 2)0)
       (iter (+ n 1) (+ count 1))
       (iter(+ n 1)count))))
(iter 1 0))
(count-integers 30)
(count-integers 4)
