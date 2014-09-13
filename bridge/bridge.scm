(define (card-val card)
  (cond ((number? (bf card)) 0)
        ((equal? (bf card) 'a) 4)
        ((equal? (bf card) 'k) 3)
        ((equal? (bf card) 'q) 2)
        ((equal? (bf card) 'j) 1)
        (else '(what kind of a card is this!?))))

(define (high-card-points hand)
  (accumulate + (every card-val hand)))

(define (count-suit suit hand)
  (count (keep (lambda (card) (member? (first card) suit)) hand)))

(define (suit-counts hand)
  (se (count-suit 's hand)
      (count-suit 'h hand)
      (count-suit 'c hand)
      (count-suit 'd hand)))

(define (suit-dist-points num)
  (cond ((equal? num 0) 3)
        ((equal? num 1) 2)
        ((equal? num 2) 1)
        (else 0)))

(define (hand-dist-points hand)
 (accumulate + (every suit-dist-points (suit-counts hand))))

(define (bridge-val hand)
  (+ (high-card-points hand) (hand-dist-points hand)))
