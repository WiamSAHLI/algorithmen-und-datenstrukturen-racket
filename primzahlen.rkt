#lang racket/base
(require math/number-theory)

(define (primzahlen f)
  (define (iter n count)
    (if (= n 39)
        count
        (if (prime? (f n))
            (iter (+ n 1) (+ count 1))
            (iter (+ n 1) count))))
  (iter 0 0))


(define(f n)(+ (* n n)n 41))

(primzahlen f)