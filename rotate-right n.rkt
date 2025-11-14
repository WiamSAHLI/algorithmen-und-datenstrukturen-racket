#lang racket/base
(define (rotate-right n)
  (define (iter n faktor result)
    (if (< n 10)                         
        (+ (* result 10) n)              
        (let* ((d(remainder n 10))       
               (r (quotient  n 10)))    
          (iter r
                (* faktor 10)
                (+ result (* d faktor))))))
  (iter n 1 0))


(rotate-right 1234)  ; => 2341
(rotate-right 90)    ; => 9
(rotate-right 507)   ; => 75