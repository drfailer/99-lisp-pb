;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 14
;; DESC: duplicate each element of a list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my/dupli (lst)
  (if (null lst)
      ()
      (append (list (car lst) (car lst)) (my/dupli (cdr lst)))))

(my/dupli '(a b c))
