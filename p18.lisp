;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 18
;; DESC: Extract a slice from a list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "p17.lisp")

(defun slice (lst i k)
  (car (split (cadr (split lst (- i 1))) (- k (- i 1))))) ;; we're counting elt from 1

(slice '(a b c d e f g h i k) 3 7)
(slice '(a b c d e f g h i k) 1 7)
(slice '(a b c d e f g h i k) 3 9)
