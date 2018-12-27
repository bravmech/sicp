
(load "../utils.scm")


; invariant a*b + c
(define (* a b)
  (define (iter a b c)
  (cond ((= a 0) c)
        ((even? a) (iter (halve a) (double b) c))
        (else (iter (- a 1) b (+ b c)))))
  (iter a b 0))
(define (double a)
  (+ a a))
(define (halve a)
  (/ a 2))


(check-expect (* 4 4) 16)
(check-expect (* 127 128) 16256)
(test)
