(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ascending? asc-lst) 
    (if (null? asc-lst) #t
        (if (null? (cdr asc-lst)) #t
            (
                if (> (car asc-lst) (cadr asc-lst)) #f
                    (ascending? (cdr asc-lst))
            )
        )
    )
)

(define (square n) (* n n))

(define (pow base exp) 
    (
        cond
            ((= exp 0) 1)
            ((= exp 1) base)
            (else(
                if (even? exp) (square (pow base (/ exp 2)))
                (* base (square (pow base (/ (- exp 1) 2))))
            ))
        
    )
)
