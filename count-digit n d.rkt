#lang racket/base

(define(count-digit n d)
  (define(iter n last count)
  (if(= n 0)
     count
     (if(= last d)
        (iter(quotient n 10)(remainder n 10)(+ count 1))
        (iter(quotient n 10)(remainder n 10)count))))
  (iter n (remainder n 10)0))

 (count-digit 50555 5)
 (count-digit 72347 7)

(define (count-digitt n d)
  (if (= n 0)
      0
      (+ (if (= (remainder n 10) d) 1 0)
         (count-digit (quotient n 10) d))))

;; Beispiele:
(count-digitt 50555 5) ; → 4
(count-digitt 1234 3)  ; → 1
(count-digitt 9999 9)  ; → 4















