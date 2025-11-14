#lang racket/base
;AUFGABE 2:
#|(define(gleiche-ziffernn n)
  (define(first-digit n)
  (if(< n 10)
     n
     (first-digit(quotient n 10))))
  (define(iter x)
    
    (let*((first(first-digit x))
             (last(remainder x 10)))
      
    (if(= last first)
       x
       (iter (+ x 1)))))
  (iter n))
(gleiche-ziffernn 123)

2.2
(define(gleiche-ziffernn n)
  (define(first-digit n)
  (if(< n 10)
     n
     (first-digit(quotient n 10))))
  
  (define(iter x)
    (if(= (remainder x 10) (first-digit x))
       x
       (iter (+ x 1))))
  (iter n))
(gleiche-ziffernn 123)
 
;lösung 2:
(define(gleiche-ziffern zahl)
  (define(erste-ziffer zahl)
    (if(< zahl 10)
       zahl
       (erste-ziffer (quotient zahl 10))))
  (if(= (remainder zahl 10)(erste-ziffer zahl))
         zahl
         (gleiche-ziffern (+ zahl 1))))

     (gleiche-ziffern 123)
(gleiche-ziffern 4567)



;Aufgabe 1: 

(define (divisible-3-7? x)
  (and (= (remainder x 3) 0)
       (= (remainder x 7) 0)))

(define (zaehlen start ende n)
  (define (iter x n)
    (cond
      ((or (< n 1) (> x ende)) 0)         
      ((divisible-3-7? x)
       (if (= n 1)
             x                      
           (iter (+ x 1) (- n 1))))      
      (else (iter (+ x 1) n))))           
  (iter start n))

(zaehlen 10 100 1)  ; ⇒ 21
(zaehlen 10 100 2)  ; ⇒ 42
(zaehlen 10 100 3)  ; ⇒ 63
(zaehlen 10 100 1337) ; ⇒ 0
|#



;Aufgabe 2:
(define(last zahl)
  (if(< zahl 10)
     zahl
     (last (quotient zahl 10))))
 (define (gleiche-ziffern zahl)
   (define(iter zahl)
     (if(= (remainder zahl 10)(last zahl))
        zahl
       (iter (+ zahl 1))))
   (iter zahl))
 (gleiche-ziffern 123)
 (gleiche-ziffern 4567)
;Aufgabe 1:
(define (zaehlen start ende n)
 (define (iter x n)
  (if(or(<= n 0)
         (> n ende))
     0
     (if(and (=(remainder x 3)0)
             (=(remainder x 7)0))
        
        (if(= n 1)
           x
           (iter (+ x 1)(- n 1)))
        (iter (+ x 1)n))))
  (iter start n))



(zaehlen 10 100 3)























