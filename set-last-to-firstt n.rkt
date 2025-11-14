#lang racket/base
(define (set-last-to-firstt n)
 
  (define (first-digit x)
   (if (< x 10)
        x
     (first-digit (quotient x 10))))
  (let* ((first (first-digit n))   
         (rest  (quotient n 10)))  
    (+ (* rest 10) first)))        

(set-last-to-firstt 4564)  ; -> 4564
(set-last-to-firstt 1231)  ; -> 1231