#lang racket/base
;Aufgabe 1



(define (ganzzahlige-wurzel? n)
  (if(integer?(sqrt n))
     #t
     #f))
 (ganzzahlige-wurzel? 25)
 (ganzzahlige-wurzel? 24)

;Aufgabe 2:

(define(fakt n)
  (define(iter a)
    (if(even? n)
       2
    (if(integer?(sqrt(- (* a a) n)))
       (- a (sqrt (- (* a a) n)))
       (iter (+ a 1)))))
  (iter (ceiling(sqrt n))))
     

(fakt 2183)
(fakt 25)
(fakt 100)
(fakt 11)

     

;Aufgabe 2:


(define(primzahl? n)
  (define(iter x)
  (if(< x n)
     (if(= 0(remainder n x))
        #f
        (iter (+ x 1)))
     #t))
  
  (iter 2))
 (primzahl? 11) 
 (primzahl? 26737) 
 (primzahl? 200)
 (primzahl? 121)






;Aufgabe 4:

(define(kubiksumme n)
  (define(iter n sum)
    (if(= n 0)
       (* sum sum sum)
       (iter (quotient n 10)(+ sum (remainder n 10)))))
  (iter n 0))
  
 (kubiksumme 101042)
 (kubiksumme 34567)

;aufgabe 5
 (define(caesar-encrypt n k)
 
  (define(iter n faktor result)
    (if(= n 0)
       result
       (iter (quotient n 10)
             (* faktor 10)
             (+ result(* faktor (remainder(+(remainder n 10)k)10)))))) 
   (iter n 1 0))

   
 (caesar-encrypt 1234 1)
 (caesar-encrypt 7901 2)
 (caesar-encrypt 987 1)
























  