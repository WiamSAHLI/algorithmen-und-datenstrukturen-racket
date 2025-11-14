#lang racket/base

;Aufgabe

(define (zaehle-groessere-nachfolger zahl)
  (define (iter n vorher count)
    (if (< n 10)
        count
        (let ((aktuell (remainder n 10)))
          (iter (quotient n 10) aktuell
                (if (< aktuell vorher)
                    (+ count 1)
                    count)))))
  (iter (quotient zahl 10) (remainder zahl 10) 0))

 (zaehle-groessere-nachfolger 12345)




 


     












