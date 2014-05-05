(define (p) (p))
;; definition is illegitimate

(define (test x y)
	(if (= x 0)
		0
		y))

(test 0 (p))


;; Applicative Order
; evaluates test, evaluates 0, tries to evaluate (p) and gets stuck in an 
; infinite loop.

;; Normal Order
; substitutes 0 and (p) in test without evaluating them. In the special form if
; the predicate is evaluated which does not contain (p) .. Since the predicate 
; is true, the consequent is evaluated. Hence, in normal order evaluation, we 
; don't ever need to evaluate the illgeitimate value.
