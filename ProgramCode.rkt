#lang typed/racket


(: fact : Integer -> Integer)
(define (fact n)
(cond
    {(> 0 n) (error "Input Less than zero")}
    {(= n 0) 1}
    {else (* n (fact ( - n 1)))}))

(fact 7)
  

(: fibo : Integer -> Integer)
(define (fibo n)
 (cond 
{(= n 0) 0}
{(= n 1) 1}
{else (+ (fibo (- n 1)) 
	(fibo (- n 2)))}))
(fibo 8)

(: my-length : (Listof Number) -> Integer)
;; simulates the length function in Racket
;; takes in a list and outputs the lengths
(define (my-length input)
  (cond
   [(empty? input) 0]
    [else (+ 1 (my-length (rest input)))]))
(my-length (list 3 3 3 3))
