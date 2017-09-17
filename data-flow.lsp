(define (all-keys x)
    (let (out (list))
        (dolist (each x)        
            (extend out (list (nth 0 each))))
        out))

(define (combine-by-key node func)
    (let (key ((node 0) 0))
        (if (= (length node) 1) (node 0)
        (list 
            key 
            (apply func
                (map (lambda (x) (nth 1 x)) node))))))
   
(define (find-nodes keys values)
    (let (out (list))
        (dolist (key keys)
            (extend out
                (list (find-all (list key '?) values)))
        )
        out))

