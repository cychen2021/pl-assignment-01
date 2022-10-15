;;; Assignment01: Scheme

(define (over-or-under a b)
  (if (> a b) 1 (if (< a b) -1 0))  
)


(define (make-adder n)
  (lambda (m) (+ n m))
)


(define (composed f g)
  (lambda (x) (f (g x)))
)


(define (remainder a b)
  (- a (* b (quotient a b))))

(define (gcd a b)
  (let ((a (if (> a b) a b)) (b (if (> a b) b a)))
    (if (= (remainder a b) 0) b (gcd b (remainder a b)))
  )
)


(define (square x) (* x x))

(define (pow base exp)
  (if (= exp 0) 1 (* base (pow base (- exp 1))))
)
