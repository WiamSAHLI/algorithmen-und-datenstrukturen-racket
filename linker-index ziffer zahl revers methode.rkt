#lang racket
(define (reverse zahl)
  (define (iter zahl rev)
    (if (= zahl 0)
        rev
        (iter (quotient zahl 10)
              (+ (remainder zahl 10) (* rev 10)))))
  (iter zahl 0))

(define (linker-index ziffer zahl)
  (define (iter rest counter)
    (if (= rest 0)
        #f
        (if (= (remainder rest 10) ziffer)
            (+ counter 1)                    
            (iter (quotient rest 10)
                  (+ counter 1)))))
  (iter (reverse zahl) 0))
(linker-index 1 531863)
(linker-index 5 531863)
(linker-index 9 531863)