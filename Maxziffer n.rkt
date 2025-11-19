#lang racket/base
(define (maxziffer n)
  (define (iter zahl maxnum)
    (if (= zahl 0)
        maxnum
        (iter (quotient zahl 10)
              (if (> (remainder zahl 10) maxnum)
                  (remainder zahl 10)
                  maxnum))))

  (iter (quotient n 10) (remainder n 10)))
(maxziffer 3475376)