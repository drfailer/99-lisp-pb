;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 21
;; DESC: Insert an element at a given position into a list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun insert-at (e lst k)
  (cond
    ((null lst) ())
    ((= k 1) (cons e lst))
    (t (cons (car lst) (insert-at e (cdr lst) (- k 1))))))

(insert-at 'alfa '(a b c d) 2)
