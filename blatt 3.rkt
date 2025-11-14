#lang racket/base
;Aufgabe 2:
(define(count-perm x)
 (define(iter n produkt)
   (if(< x 2)
      0
      (if(> n x)
         produkt
         (iter (+ n 1)(* n produkt)))))
  (iter 2 1))
 (count-perm 2)
 (count-perm 3)
 (count-perm 5)
;Aufgabe 3:
 (define(isbn-test isbn)
  (define(iter num p sum )
    
    (if(= num 0)
       
        (if(= (remainder sum 11) 10)
        "X"
        (remainder sum 11))
        
         (iter(quotient num 10)(- p 1)(+ sum(* p (remainder num 10))))))
         
          (iter isbn 9 0))
 
 (isbn-test 392511825)
 
       
  (isbn-test 344615497)






   