#lang racket

;;; Return the sum of all numbers up to and including n for 0 <= n.
(define (sum-to-n n)
  (cond
   ((zero? n) 0)
   (else
    (+ n (sum-to-n (- n 1))))))

;;; Calculate n choose r, for 0 <= n, 0 <= r <= n
(define (combination n r)
  (cond
   ((zero? r) 1)
   ((= n r) 1)
   (else
    (+ (combination (- n 1) (- r 1))
       (combination (- n 1) r)))))

;;; Return the sum of all numbers in a list
(define (sum lst)
  (cond
   ((null? lst) 0)
   (else
    (+ (car lst) (sum (cdr lst))))))

;;; Return whether element a is contained in list lst
(define (member? a lst)
  (cond
   ((null? lst) #f)
   ((equal? a (car lst)) #t)
   (else
    (member? a (cdr lst)))))

;;; Return a list with the *first* instance of element a removed if present
(define (rember lst a)
  (cond
   ((null? lst) '())
   ((equal? a (car lst)) (cdr lst))
   (else
    (cons (car lst) (rember (cdr lst) a)))))

;;; Return whether element a is contained in any level of S-expression lst
(define (member?* a lst) null)

;;; Return the intersection of sets set1 and set2
;;; set1 and set2 are guaranteed not to contain duplicate elements
(define (intersect set1 set2) null)

;;; Return whether the list contains two equal adjacent elements
(define (two-in-a-row? lst) null)

;;; Return the nth element of a list
(define (nth lst n) null)

;;; Return a list containing the unique elements of lst
(define (dedup lst) null)

;;; Return a list containing the elements of lst in reverse order
(define (reverse lst) null)

(provide
 sum-to-n
 combination
 sum
 rember
 member?
 member?*
 intersect
 two-in-a-row?
 nth
 dedup
 reverse)
