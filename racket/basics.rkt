#lang racket

;;; Return the sum of all numbers up to and including n for 0 <= n.
(define (sum-to-n n) null)

;;; Calculate n choose r, for 0 <= n, 0 <= r <= n
(define (combination n r) null)

;;; Return the sum of all numbers in a list
(define (sum lst) null)

;;; Return whether element a is contained in list lst
(define (member? a lst) null)

;;; Return a list with the *first* instance of element a removed if present
(define (rember lst a) null)

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
