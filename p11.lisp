;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 11
;; DESC: Modified run-length encoding.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "p09")

(defun encode-modified (lst)
  (map 'list (lambda (x)
               (if (= 1 (length x))
                 (car x)
                 (list (length x) (car x))))
       (pack lst)))

;; test
(encode-modified '(a a a a b c c a a d e e e e))
