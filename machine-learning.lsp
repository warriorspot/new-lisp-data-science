# Subtract a from b, then square the result
(define (sub-square a b) 
    (pow (sub b a) 2))

# Return the Euclidean distance between a and b
(define (distance a b) 
    (sqrt (apply + (map sub-square a b))))

# Return the distances between point x and list of points X
(define (distances x X) 
    (map (lambda (each) (distance x each)) 
        X))

(define (nearest-neighbor x X)
    (let (d (distances x X))
        (let (n (eval (push 'min d)))
            (index (lambda (each) (= each n)) d))))

(define (rmse a b) 
    (sqrt 
        (/ 
            (apply + 
                (map 
                    (lambda (x) (pow x 2)) 
                    (map - a b))) 
            (length a))))
               
