#lang racket/base






;Aufgabe 5:
;Das Problem in diesem Code ist, dass er nur richtig funktioniert, wenn man das Maximum sucht. In anderen Fällen (min sucht) liefert er ein falsches Ergebnis, weil der Anfangswert von max auf 0 gesetzt ist. Daher werden die ersten beiden Zahlen mit 0 verglichen, was falsch ist.maxNum soll am Anfang den Wert des letzten Elements haben. Dieser Wert wird in maxNum gespeichert, und danach vergleicht man in jeder Iteration maxNum mit dem ersten Element.
(define (maxziffern n)
  (define (iter n first maxnum)
    (if (= n 0)
       maxnum
        
          (iter (quotient n 10)
                (remainder n 10)
                
                (max maxnum (remainder n 10) ))))
  (iter n (remainder n 10)  0))

 
 (maxziffern 3475376)
; true code:
(define(maxziffer x)
  (define(iter x first maxnum)
    (if(= x 0)
       maxnum
        (iter(quotient x 10)(remainder x 10)(max (remainder x 10) maxnum)))) 
    
    (iter (quotient x 10) (remainder x 10)(max (remainder x 10)(remainder(quotient x 10)10)))) 
    (maxziffer 3475376)
    (maxziffer 1012)











