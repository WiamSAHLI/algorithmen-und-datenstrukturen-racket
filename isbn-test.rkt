#lang racket/base

(define (isbn-test isbn)
  (define (isbn-iter zahl position sum)
    (if (= zahl 0)
        sum
        (isbn-iter (quotient zahl 10)
                   (- position 1)
                   (+ sum (* (remainder zahl 10) position)))))
  
  (define (berechne-rest)
    (remainder (isbn-iter isbn 9 0) 11))

  (if (= (berechne-rest) 10)
      "X"
      (berechne-rest)))


 (isbn-test 344615497) 









   