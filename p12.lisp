;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROBLEMS: 12
;; DESC: Decode a run-length encoded list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun decode (lst)
  (if (null lst)
    ()
    (if (listp (car lst))
      (if (= (caar lst) 1) ;; ((1 e) ...)
        (cons (cadar lst) (decode (cdr lst)))
        (cons (cadar lst)
              (decode (cons (list (- (caar lst) 1) (cadar lst)) (cdr lst)))))
      (cons (car lst) (decode (cdr lst))))))

;; test
(decode '((4 a) b (2 c) (2 a) d (4 e)))
