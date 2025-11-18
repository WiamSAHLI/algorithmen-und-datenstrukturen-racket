#lang racket/base
(define(add-between-digits n d)
  (define(iter num add place)
    (if(= num 0)
       add
       (iter (quotient num 10)
           (+ add (* place(+ (* 10 (remainder num 10)) d)))
           (* place 100))))
        (iter (quotient n 10) (remainder n 10) 10))
  (add-between-digits 1234 5) 