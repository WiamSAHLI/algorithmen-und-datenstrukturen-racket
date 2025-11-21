#lang racket/base
;Methode 1:
(define (vergleich zahl op)

  (define (iter n count)
   
    (if (= (remainder (quotient n 10) 10) 0)
        count
        (iter (quotient n 10)
              (if (op (remainder (quotient n 10) 10)   ; before-last
                      (remainder n 10))               ; last
                  (+ count 1)
                  count))))


  (if (< zahl 10)
      #f
      (iter zahl 0)))




(vergleich 112233 <)

 (vergleich 12345 <)
 (vergleich 54321 <) 
 (vergleich 7 <) 