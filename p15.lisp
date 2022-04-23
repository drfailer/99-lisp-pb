;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 15
;; DESC: replicate each element of a list n times.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my/replicate (lst n)
  (labels ((loc/replicate (e i)
	   (if (= 0 i)
	       ()
	       (cons e (loc/replicate e (- i 1))))))
    (if (null lst)
	()
	(append (loc/replicate (car lst) n) (my/replicate (cdr lst) n)))))

(my/replicate '(a b c) 4)
