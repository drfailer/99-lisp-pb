;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 17
;; DESC: Split a list into two parts; the length of the first part is given.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun split (lst n)
  (if (null lst)
      '(() ())
      (let ((st (split (cdr lst) (- n 1))))
	(if (> n 0)
	    (list (cons (car lst) (car st)) (cadr st))
	    (list (car st) (cons (car lst) (cadr st)))))))

(split '(a b c d e f g h i k) 3)
