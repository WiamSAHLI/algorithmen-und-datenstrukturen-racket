#lang racket
;The Ackermann function is one of the most famous functions that cannot be written using iteration (meaning you can’t implement it with a normal iter or loop) Why?
;Because it involves a recursive call inside another recursive call — a recursive inside recursive structure — and that’s what gives it its power and depth

(define (ackermann n m)
  (cond
    ((= n 0) (+ m 1))                           ; n=0, m>0
    ((= m 0) (ackermann (- n 1) 1))             ; n>0, m=0
    (else    (ackermann (- n 1)                 ; n>0, m>0
                        (ackermann n (- m 1))))))

(ackermann 0 1)  ; -> 2
(ackermann 4 0)  ; -> 13
(ackermann 3 3)  ; -> 61
