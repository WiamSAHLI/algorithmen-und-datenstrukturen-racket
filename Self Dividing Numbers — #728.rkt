#lang racket/base
#|(define(skonto betrag anzahltage)
  (cond((<= anzahltage 10)(* betrag 0.97))
       ((<= anzahltage 20)(* betrag 0.98))
       (else betrag)))


  (skonto 100 23)

(define(f a b c d e)
  (or (and a b c d e) (not (and c a d)) (and a c)))

(f #t #t #t #t #t)

  (define(tetraederzahl n)
  (/(*(+ n 1)(+ n 2) n)6))
(tetraederzahl 6)



(define(preis kwh)
  (cond((< kwh 2000)(* kwh (* 1.1 0.20)))
       ((>= kwh 3500)(* kwh (* 0.95 0.20)))
       (else (* kwh 0.20))))
(preis 2500)

(define(pruefezahl n)
  (if(and(=(remainder n 3)0)
       (> n 12)
       (<=(* n n)999))
     #t
      #f))
(pruefezahl 13)
(pruefezahl 15)
(pruefezahl 60)

(define(skonto betrag anzahltage)
  (cond((<= anzahltage 10)(* betrag 0.97))
       ((<= anzahltage 20)(* betrag 0.98))
       (betrag)))

(skonto 100 15)|#

(define(rechteck b d c e)
    (*(+ b d b)c e))
 
  (define(dreick d a c)
    (*(* 0.5(* d a))c))
  (define ( kreis d c)
   (/(*(* (/(* d d )4)3.141592653589793)c)2))

(define(volumen a b c d e)
 (- (+ (/(*(* (/(* d d )4)3.141592653589793)c)2) (*(+ b d b)c e)) (*(* 0.5(* d a))c))) 
 
  
(volumen 2 2 3 4 3)


;Aufgabe 2
(define(anzahl a b c)
   (let ((D (- (* b b) (* 4 a c))))
    (if (= a 0)
        #f
        (cond ((> D 0) 2)
          ((= D 0) 1)
          ((< D 0) 0)))))
  
(anzahl 1 1 -2)

;Aufgabe 2 2.Lösung

(define(anzahll a b c)
   (define D (- (* b b) (* 4 a c)))
    (if (= a 0)
        #f
        (cond ((> D 0) 2)
          ((= D 0) 1)
          ((< D 0) 0))))
  
(anzahll 1 1 -2)

;Aufgabe 2.3;
(define(anzahlll a b c)
  (cond((>(-(* b b)(* 4 a c)) 0) 2)
       ((=(-(* b b)(* 4 a c)) 0) 1)
       ((<(-(* b b)(* 4 a c)) 0) 0)
       ((= a 0) #f)))
  (anzahlll 1 1 -2)


(define(f a b c d e)
  (or(and a b d e)(not(or(and c a d)(not(and c(or(and a (not b))(and b (not a)))))))))


(f #t #t #t #t #t)
(f #f #f #f #t #t)

  
  








        
    


       