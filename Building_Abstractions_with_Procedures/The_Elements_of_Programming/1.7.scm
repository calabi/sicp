;; The Square Root Program

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
					x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))
	
(define (good-enough? guess x)
	(< (/ (abs (- (improve guess x) guess)) guess) 0.001))
	
(define (sqrt x)
	(sqrt-iter 1.0 x))
	
;; The previous good-enough fails for small numbers. |guess^2 - x| < 10^{-3}
; is a bad idea when x is comparable to 10^{-3}. The slope of x^2 keeps 
; increasing with x. So for very large values of x, small increments in x result
; in relatively huge variations in y. A y in the neighbourhood of x^2 +/- 
; 10^{-3} for numbers which are big enough will never be reached since computers 
; have a finite least count. Hence, this test works better for small and large 
; numbers.
