#lang racket/base
(define(ggt a b)
  (if(= b 0)
     a
     (ggt b (remainder a b))))
(ggt 48 18)