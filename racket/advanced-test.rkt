#lang racket

(require rackunit "advanced.rkt")

(test-case
 "fibonacci"
 (check-equal? (fibonacci 0) 0)
 (check-equal? (fibonacci 1) 1)
 (check-equal? (fibonacci 2) 1)
 (check-equal? (fibonacci 10) 55)
 (check-equal? (fibonacci 100) 354224848179261915075))
