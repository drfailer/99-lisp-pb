;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 08
;; DESC: Eliminate consecutive duplicates of list elements.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun compress (lst)
  (if (or (null lst) (null (cdr lst)))
    lst
    (if (equal (car lst) (cadr lst))
      (compress (cdr lst))
      (cons (car lst) (compress (cdr lst))))))

;; test
(compress '(a a a a b c c a a d e e e e))
