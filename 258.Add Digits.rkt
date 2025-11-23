#lang racket/base
;methode 1:
(define(add-digits num)
  (define(iter n add)
  (if(= n 0)
     (if(> add 9)
        (iter add n)
        add)
     (iter(quotient n 10)
          (+ add(remainder n 10)))))
  (iter (abs num) 0))
(add-digits -38)
;methode 2:
(define ( adddigits num)
  
  (if(<= (abs num) 9)
     (abs num)
     (adddigits(+(quotient num 10)(remainder num 10)))))


(adddigits -38)
