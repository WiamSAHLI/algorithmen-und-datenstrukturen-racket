#lang racket
;Aufgabe 1:
(define(euler-n n)
  (define(iter k fak sum)
    (if(= n 0)
       0
       (if(> k n)
          sum
          (iter (+ k 1)(* fak k)(+ sum (/ 1 fak))))))
    (iter 1 1 1))
  (euler-n 6)

;Aufgabe2:
;The Ackermann function is one of the most famous functions that cannot be written using iteration (meaning you can’t implement it with a normal iter or loop) Why?
;Because it involves a recursive call inside another recursive call — a recursive inside recursive structure — and that’s what gives it its power and depth

(define (ackermann n m)
  (cond
    ((= n 0) (+ m 1))                           ; n=0, m>0
    ((= m 0) (ackermann (- n 1) 1))             ; n>0, m=0
    (else    (ackermann (- n 1)                 ; n>0, m>0
                        (ackermann n (- m 1))))))

(ackermann 0 1)  ; -> 2
(ackermann 4 0)  ; -> 13
(ackermann 3 3)  ; -> 61
;Aufgabe 3:
;Aufgabe 4:

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
;Aufgabe 5:
(define(sum x y)
 
  (if(= y 0)
     x
   (sum(+ x 1)(- y 1 ))))
;Aufgabe 6:
(define(mul x y)

    (if(= y 0)
     0
     (sum x (mul x (- y 1)))))
      
(mul 6 3)
