;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 20
;; DESC: Remove the K'th element from a list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun remove-at (lst k)
  (cond
    ((null lst) ())
    ((= k 1) (cdr lst))
    (t (cons (car lst) (remove-at (cdr lst) (- k 1))))))

(remove-at '(a b c d) 1)
(remove-at '(a b c d) 2)
(remove-at '(a b c d) 3)
(remove-at '(a b c d) 4)
