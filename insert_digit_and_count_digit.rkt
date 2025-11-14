#lang racket/base
count-digit

(define(count-digit n d)
    (define(iter n last count )
       (if(= n 0)
          count
          (let* ((rest (quotient n 10))
       (next-last (remainder rest 10)))
 

          (if(= last d)
             (iter  rest next-last   (+ count 1))
             (iter  rest next-last  count)))))
  
(iter n  (remainder n 10)  0))
(count-digit 55550 5)

kurz code:

(define (count-digit n d)
  (define (iter n last count)
    (if (= n 0)
        count
        (let* ((rest (quotient n 10)))
          (if (= last d)
              (iter rest (remainder rest 10) (+ count 1))
              (iter rest (remainder rest 10) count)))))
  (iter n (remainder n 10) 0))



|#
(define (count-digit n d)
  (define (iter n last count)
    (if (= n 0)
        count
       
          (if (= last d)
              (iter (quotient n 10) (remainder (quotient n 10) 10) (+ count 1))
              (iter (quotient n 10) (remainder (quotient n 10) 10) count))))
  (iter n (remainder n 10) 0))
(count-digit 5550 5)

;insert-digit-at n p d)

(define(insert-digit-at n p d)
  (let* ((place(expt 10 p))
         (last(remainder n place))
         (rest(quotient n place)))
    (+ (* rest (* 10 place))(* d place) last)))
(insert-digit-at 13456 2 7);134956

;Aufgabe 1 blatt 6:
(define(zaehlen start ende n)
  (define(iter start ende 






