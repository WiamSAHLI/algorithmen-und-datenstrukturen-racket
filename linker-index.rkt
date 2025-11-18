#lang racket
(define(num-digits zahl)
  (define(iter zahl count)
    (if(= zahl 0)
       count
       (iter (quotient zahl 10)(+ count 1))))
  (iter zahl 0))
 
(define(linker-index ziffer zahl)
  (define(iter zahl digit counter)

 
      (if(= digit ziffer)
         (+ counter 1)
          (if(= zahl 0)
             #f
         (iter(remainder zahl(expt 10 (-(num-digits zahl)1)))
              (quotient zahl (expt 10 (-(num-digits zahl)1) ))
              (+ counter 1)))))
       
    (iter(remainder zahl (expt 10 (-(num-digits zahl)1)))
         (quotient zahl (expt 10 (-(num-digits zahl)1)))
          0))






 (linker-index 1 51)  ; -> 2
 (linker-index 0 5318630)  ; -> 1

 (linker-index 0 10203)   ; -> #f


