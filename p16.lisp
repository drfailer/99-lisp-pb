;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 16
;; DESC: Drop every N'th element from a list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun drop (lst n)
  (labels ((loc/drop (lst i)
	     (if (null lst)
		 ()
		 (if (= 1 i)
		     (loc/drop (cdr lst) n)
		     (cons (car lst) (loc/drop (cdr lst) (- i 1)))))))
    (loc/drop lst n)))

(drop '(a b c d e f g h i k) 3)
