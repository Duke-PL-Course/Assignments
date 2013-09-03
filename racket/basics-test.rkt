#lang racket

(require rackunit "basics.rkt")

(test-case
 "sum-to-n"
 (check-equal? (sum-to-n 0) 0)
 (check-equal? (sum-to-n 1) 1)
 (check-equal? (sum-to-n 2) 3)
 (check-equal? (sum-to-n 10) 55))

(test-case
 "combination"
 (check-equal? (combination 0 0) 1)
 (check-equal? (combination 5 0) 1)
 (check-equal? (combination 5 1) 5)
 (check-equal? (combination 5 2) 10)
 (check-equal? (combination 5 3) 10)
 (check-equal? (combination 5 4) 5)
 (check-equal? (combination 5 5) 1))

(test-case
 "sum"
 (check-equal? (sum '()) 0)
 (check-equal? (sum '(6)) 6)
 (check-equal? (sum '(9 13 -4)) 18))

(test-case
 "rember"
 (check-equal? (rember '() 'a) '())
 (check-equal? (rember '(a b c) 'd) '(a b c))
 (check-equal? (rember '(a b c) 'b) '(a c))
 (check-equal? (rember '(a b c b) 'b) '(a c b)))

(test-case
 "member?"
 (check-false (member? 'a '()))
 (check-false (member? 'd '(a b c)))
 (check-true (member? 'b '(a b c)))
 (check-false (member? 'b '(a (b) c))))

(test-case
 "member?*"
 (check-false (member?* 'a '()))
 (check-false (member?* 'd '(a b c)))
 (check-true (member?* 'b '(a b c)))
 (check-true (member?* 'b '(a (b) c))))

(test-case
 "intersect"
 (check-equal? (intersect '() '(a b c)) '())
 (check-equal? (intersect '(a b c) '()) '())
 (check-equal? (intersect '(a b c) '(c b a)) '(a b c))
 (check-equal? (intersect '(a b c) '(c d e)) '(c)))

(test-case
 "two-in-a-row?"
 (check-false (two-in-a-row? '()))
 (check-false (two-in-a-row? '(a)))
 (check-false (two-in-a-row? '(a b c)))
 (check-false (two-in-a-row? '(a b a)))
 (check-true (two-in-a-row? '(a a)))
 (check-true (two-in-a-row? '(b a a b))))

(test-case
 "nth"
 (check-equal? (nth '(a b c d) 0) 'a)
 (check-equal? (nth '(a b c d) 1) 'b)
 (check-equal? (nth '(a b c d) 2) 'c)
 (check-equal? (nth '(a b c d) 3) 'd))

(test-case
 "dedup"
 (check-equal? (dedup '()) '())
 (check-equal? (dedup '(a b c)) '(a b c))
 (check-equal? (dedup '(a b c b c)) '(a b c)))

(test-case
 "reverse"
 (check-equal? (reverse '()) '())
 (check-equal? (reverse '(a)) '(a))
 (check-equal? (reverse '(a b c d)) '(d c b a)))
