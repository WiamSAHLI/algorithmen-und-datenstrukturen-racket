#lang racket
;1
(define(nat-wurzel x)
  (define(iter ungerade summe sumannden)
    (if(= summe x)
      sumannden
       (iter(+ ungerade 2) (+ ungerade summe )(+ sumannden 1))))
    (iter 1 0 0))
(nat-wurzel 25)

;2
(define(zahl-umdrehen x)
  (define(iter n umdrehen)
    (if(= n 0)
       umdrehen
       (iter (quotient n 10)(+(remainder n 10)(* umdrehen 10)))))
  (iter x 0))
       (zahl-umdrehen  123)


;3
(define (aufsteigendes-produkt? a b c d)
  (if(and(< a b)
         (< b c)
         (< c d)(= (* a b c )d))
     #t
     #f))
 (aufsteigendes-produkt? 1 2 3 6)
 (aufsteigendes-produkt? 2 1 3 6)
 (aufsteigendes-produkt? 2 3 5 11)


(define (aufsteigendess-produkt? a b c d)
  (if(and (< a b c d) (= (* a b c )d))
     #t
     #f))

;Aufgabe 4

(define(f1 a b)
  (and(not(or a b)(or a b) a (not b))))




