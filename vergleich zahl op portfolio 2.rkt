#lang racket/base

(define(vergleich zahl op)
  (define(iter n count)
    (if(< zahl 10)
       #f
       (let((last(remainder(quotient n 10)10))
            (first(remainder n 10)))
         (if(= last 0)
            count
            (iter(quotient n 10)
                 (if(op last first)
                    (+ count 1)
                    count))))))
  (iter zahl 0))
 (vergleich 112233 <)
 (vergleich 12345 <)
 (vergleich 54321 <) 
 (vergleich 7 <) 