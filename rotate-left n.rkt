#lang racket/base
(define (rotate-left n)
  (define (iter n faktor last result)
    (if (= n 0)
        (+ result (* last faktor))        
        (let* ((d (remainder n 10))        
               (r (quotient  n 10)))        
          (iter r
                (* faktor 10)
              last
                (+ result (* d faktor))))))
  (iter (quotient n 10)                    
        1
        (remainder n 10)                    
        0))


(rotate-left 1234) ; => 4123
