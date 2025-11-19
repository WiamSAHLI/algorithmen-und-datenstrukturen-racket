#lang racket/base
;sum-digits
(define(sum-digits n)
  (define(iter num sum)
    (if(= num 0)
       sum
       (iter (quotient num 10)
             (+ sum(remainder num 10)))))
  (iter n 0))
(sum-digits 505)
;count-digit
(define(count-digit n d)
  (define(iter num counter)
    (if(= num 0)
       counter
       (if(=(remainder num 10) d)
          (iter(quotient num 10)(+ counter 1))
          (iter(quotient num 10)counter))))
    (iter n 0))
(count-digit 50555 5)
;maxziffer
(define(maxziffer zahl)
  (define(iter n maxnum)
    (if(= n 0)
         maxnum
       (if(> (remainder n 10) maxnum)
           (iter (quotient n 10)
                 (remainder n 10))
            (iter (quotient n 10)
                   maxnum))))
    (iter(quotient zahl 10)(remainder zahl 10)))


(maxziffer 3475376)

;zahl umdrehen
(define(zahl-umdrehen n)
  (define(iter n umdrehen)
    (if(= n 0)
       umdrehen
       (iter(quotient n 10)
            (+(remainder n 10)(* umdrehen 10)))))
    (iter n 0))
(zahl-umdrehen 123)
;same first last
(define(first n)
 (if(< n 10)
     n
     (first(quotient n 10))))
 
(define(same-first-last? n)
  (if(= (remainder n 10) (first n))
     #t
     #f))
(same-first-last? 5055); → #t
 (same-first-last? 1234); → #f
 (same-first-last? 9) ;→ ;#t
;mirror-number
(define(mirror n)
 (define (iter n reverse)
   (if(= n 0)
      reverse
      (iter (quotient n 10)
            (+ (remainder n 10)(* reverse 10)))))
  (iter n 0))
(define (mirror-number? n)
  (if(= (mirror n) n)
     #t
     #f))
  
 (mirror-number? 1221) ;→ #t
 (mirror-number? 1231); → #f
 (mirror-number? 7) ;→ #t
; sum-even-digits
(define (sum-even-digits n)
  (define(iter n sum)
    (if(= n 0)
       sum
       ;(if(=(remainder(remainder n 10) 2)0)
       ;(iter(quotient n 10)(+ sum(remainder n 10)))
       ;(iter(quotient n 10)sum))))
   (iter(quotient n 10)
            (if(=(remainder(remainder n 10) 2)0)
               (+ sum(remainder n 10))
              sum))))
  (iter n 0))
 (sum-even-digits 123456); → 12
 (sum-even-digits 97531) ;→ 0
 (sum-even-digits 808); → 16
; replace-digit
(define(replace-digit zahl d e)
  (define(iter n replace faktor)
    (if(= n 0)
      replace
     (if(=(remainder n 10) d)
             (iter (quotient n 10)
                   (+ replace(* faktor(+ e (* (remainder n 10) 0))))
                   (* faktor 10))
             (iter (quotient n 10)
                   (+ replace(* faktor(remainder n 10)))
                   (* faktor 10)))))
       
      (iter zahl 0 1))

 (replace-digit 70707 0 9) ;→ 79797
 (replace-digit 12030 0 5) ;→ 12535
 (replace-digit 333 3 8); → 888
;steps-to-match-last
 (define(steps-to-match-last n)
    (define(firstnum n)
   
  (if(< n 10)
    n
   (firstnum (quotient n 10))))
    
   (define(iter last counter)
  (if(= last (firstnum n))
       counter
  
     (iter(remainder(+ last 1) 10)
          (+ counter 1))))
   (iter (remainder n 10) 0))
 
(steps-to-match-last 4567)  ; => 7
(steps-to-match-last 7893)  ; => 4
(steps-to-match-last 5055)  ; => 0
;palindrom-steps
(define(palindrome-step n )
  (define(first n)
    (if(< n 10)
       n
       (first(quotient n 10))))
  (define(iter last counter)
    (if(=(first n) last)
       counter
       (iter (remainder (+ last 1) 10)
             (+ counter 1))))
      (iter (remainder n 10) 0))
 (palindrome-step 123); → 8
 (palindrome-step 4567) ;→ 7
 (palindrome-step 88); → 0

    