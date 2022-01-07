;-----------------------------------;
;   Developer -- Shelby Rutland     
;   Date ------- March 24, 2021     
;-----------------------------------;

(define (dup lis)
  (cond ((null? lis)'())
        ((member (car lis) (cdr lis)) (dup (cdr lis)))
        (else (cons (car lis) (dup (cdr lis))))
    )
)

(define (intersection lis1 lis2)
  (if (null? lis1) 
      '()
      (if (null? lis2) 
          '()
          (if(equal? (car lis1) (car lis2))
               (append (list (car lis2)) (append (intersection lis1 (cdr lis2) ) (intersection (cdr lis1) lis2 )) )
            (append (intersection lis1 (cdr lis2) ) (intersection (cdr lis1) lis2 ))
          )
      )
  )
)
        
(display (dup (intersection '(a b c d) '(x b y z a))))