#lang racket/base


(define(Reverse n)
  (define(iter n reverse)
    (if(= n 0)
          reverse
          (iter (quotient n 10)
                (+ (remainder n 10)(* reverse 10)))))
  (iter n 0))


(Reverse 012030)