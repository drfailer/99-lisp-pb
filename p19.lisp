;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 19
;; DESC: Rotate a list N places to the left.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "p17.lisp")

(defun rotate (lst n)
  (let ((subs (if (> n 0)
		  (split lst n)
		  (split lst (+ (length lst) n)))))
    (append (cadr subs) (car subs))))

(rotate '(a b c d e f g h) 3)
(rotate '(a b c d e f g h) -2)
