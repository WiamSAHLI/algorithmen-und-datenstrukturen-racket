#lang racket
#|(define(count-digit n)
  (define(iter n count)
    (if(= n 0)
       count
       (iter(quotient n 10)(+ count 1))))
  (iter n 0))

(define(rotation n)
 (define (iter n faktor result)
   (if(< n 10)
      (+ n (* result 10))
      
      (let* ((r(remainder n 10))
             (d(quotient n 10)))
       (iter d
             (* faktor 10)
             (+ result (* faktor r))))))
  (iter n 1 0))
  (rotation 1234)
(define(normalize-rotations x)
  (define(iter x ergebnis)
    (if(<(rotation n) (how-rotation x))
       (iter (ergebnis (rotation n))
             (min ergebnis)))))|#

















