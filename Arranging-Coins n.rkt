#lang racket/base
(define(Arranging-Coins n)
  (define(iter n row)
    (if(< n row)
      (- row 1) 
       (iter (- n row)(+ row 1))))
    (iter n 1))
    (Arranging-Coins 8)