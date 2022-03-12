;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 03
;; DESC: Find the K'th element of a list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun element-at (lst k)
  (if (> k 1) ;; index start from 1 in the problem's example
    (if (null lst)
      (error "There is no K'th element in this list.")
      (element-at (cdr lst) (- k 1)))
    (if (null lst) ;; check if (car lst) exists
      (error "There is no K'th element in this list.")
      (car lst))))
