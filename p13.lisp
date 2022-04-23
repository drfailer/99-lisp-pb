;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 13
;; DESC: Run-length encoding of a list (direct solution).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun encode-modified (lst)
  (if (null lst) ;; empty list
    nil
    (if (null (cdr lst)) ;; list with 1 element
      lst
      (let ((s (encode-modified (cdr lst))))
        (if (listp (car s))      ;; s = ((n e) ...)
          (if (equal (car lst) (cadar s))
            (cons (list (+ 1 (caar s)) (cadar s)) (cdr s)) ;; add the element to the sub list
            (cons (car lst) s))      ;; create a new element
          (if (equal (car lst) (car s))
            (cons (list 2 (car s)) (cdr s)) ;; create new sub list
            (cons (car lst) s))))))) ;; add new element

;; test
(encode-modified '(a a a a b c c a a d e e e e))
