#!/usr/local/bin/newlisp
(define (zip a b)
    (let (out (list))
        (dotimes (i (length a))
            (extend out 
                    (list (list (nth i a) 
                                (nth i b))))) 
    out))

(define (comp a b)
    (>= (last a) (last b)))

(define (foo)
    (let (words 
        (parse (get-url fileurl) " "))
        (let (unique-words (unique words))
            (zip unique-words 
                (count unique-words words)))))
