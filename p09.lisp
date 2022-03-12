;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 09
;; DESC: Pack consecutive duplicates of list elements into sublists.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun pack (lst)
  (if (or (null lst) (null (cdr lst)))
    (list lst) ;; ((e)) ou (()) si input vide
    (let ((s (pack (cdr lst))))
      (if (equal (car lst) (caar s))
        (cons (cons (car lst) (car s)) (cdr s))
        (cons (list (car lst)) s)))))

;; test
(pack '(a a a a b c c a a d e e e e))
