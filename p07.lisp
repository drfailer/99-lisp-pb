;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 07
;; DESC: Flatten a nested list structure.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my-flatten (lst)
  (if (null lst)
    ()
    (if (listp (car lst))
      (append (my-flatten (car lst)) (my-flatten (cdr lst)))
      (cons (car lst) (my-flatten (cdr lst))))))

;; test
(my-flatten '(a b c d))
(my-flatten '(a (b (x y z) c) d))
