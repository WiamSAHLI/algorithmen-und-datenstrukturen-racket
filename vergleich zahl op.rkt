#lang racket/base
;Aufgabe kila juj ar9am mlas9in m3a ba3diyatem chuf chkun sghir wchkun lkbir 

(define (vergleiche zahl op)
  (define (iter n vorher result)
    (if (< n 10)
        result
        (let ((aktuell (remainder n 10)))
          (iter (quotient n 10)
                aktuell
                (if (op aktuell vorher)
                    (+ result 1)
                    result)))))
  (if (< zahl 10)
      0
      (iter (quotient zahl 10) (remainder zahl 10) 0)))



(vergleiche 112233 <)

(vergleiche 12345 <)