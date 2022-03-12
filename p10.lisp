;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 10
;; DESC: Run-length encoding of a list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "p09")

(defun encode (lst)
  (map 'list (lambda (x) (list (length x) (car x))) (pack lst)))

;; test
(encode '(a a a a b c c a a d e e e e))





;; direct method
; (defun encode (lst)
;   (if (null lst) ;; does't work with empty list
;     nil
;     (if (null (cdr lst))
;       (list (cons 1 lst)) ;; ((1 e))
;       (let ((s (encode (cdr lst))))
;         (if (equal (car lst) (cadar s)) ;; if we have the same element
;           (cons (list (+ 1 (caar s)) (cadar s)) (cdr s)) ;; add 1 to the count
;           (cons (list 1 (car lst)) s)))))) ;; else create a new element
