#lang racket
(define(To-binary n)
  (define(iter n faktor result)
    (if(= n 0)
       result
       (iter (quotient n 2)
             (* faktor 10)
             (+ result(* faktor (remainder n 2))))))
       (iter n 1 0))
(To-binary 13)