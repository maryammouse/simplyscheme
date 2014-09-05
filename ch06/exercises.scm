#| 6.1
 | Guesses:
 | '(nowhere man)
 |
 | error? (square does not get a boolean...)
 | (no, I got 3! Maybe because empty? did not get a value to compare
 | it assumed it must be empty.)
 |
 | 'goes
 |#

#| 6.2
 | Guesses:
 | #t
 | #f
 | #f
 | #t
 | #t
 | #t
 |#

#| 6.3 |#

(define (sign number)
  (cond ((< number 0) 'negative)
        ((= number 0) 'zero)
        (else 'positive)))

#| 6.4 |#

(define (utensil meal)
  (cond ((equal? meal 'chinese) 'chopsticks)
        (else 'fork)))


#| 6.5 |#

(define (european-time time)
  (cond ((equal? time '(12 am)) 24)
        ((equal? time '(12 pm)) 12)
        ((member? 'pm time) (+ (first time) 12))
        (else (first time))))

(define (american-time time)
  (cond ((equal? time 12) '(12 pm))
        ((equal? time 24) '(12 am))
        ((> time 12) (- time 12))
        (else time)))

#| 6.6 |#
(define (teen? age)
  (if (and (>= age 13) (<= age 19))
    #t
    #f))

#| 6.7 |#

(define (type-of type)
  (cond ((number? type) 'number)
        ((word? type) 'word)
        ((boolean? type) 'boolean)
        ((sentence? type) 'sentence)))

#| 6.8 |#

(define (indef-article wd)
  (if (member? (first wd) 'aeiouAEIOU) 
    (se 'an wd)
    (se 'a wd)))

#| 6.9 |#

(define (plural wd)
  (cond ((member? wd '(boy toy)) (word wd 's))
        ((equal? (last wd) 'y) (word (bl wd) 'ies))
        (else (word wd 's))))

(define (thismany num thing)
  (if (= num 1) 
    (se num thing)
    (se num (plural thing))
    ))

#| 6.10 |#

(define (sort2 sent)
  (if (> (first sent) (last sent))
    (se (last sent) (first sent))
    sent))

#| 6.11 |#

(define (valid-date? month day year)
  (cond ((and (equal? month 2)
              (> day 28)
              (< day 30)
              (equal? (remainder year 4) 0)
              (not (equal? (remainder year 100) 0))) #t)
        ((and (equal? month 2) 
             (> day 28)
             (< day 30)
             (equal? (remainder year 4) 0)
             (equal? (remainder year 100) 0)
             (equal? (remainder year 400) 0)) #t)
        ((and (equal? month 2)
              (> day 28)
              (< day 30)
              (equal? (remainder year 4) 0)
              (equal? (remainder year 100) 0)
              (not (equal? (remainder year 400) 0))) #f)
        ((and (equal? month 2)
              (> day 28)
              (< day 30)
              (equal? (remainder year 4) 0)
              (not (equal? (remainder year 100) 0)) #t))
        ((< year 1) #f)
        ((> month 12) #f)
        ((< month 1) #f)
        ((< day 1) #f)
        ((and (member? month '(1 3 5 7 8 10 12)) 
             (< day 32)) #t)
        ((and (member? month '(2 4 6 9 11))
              (< day 31)) #t)
        (else #f)
        ))

#| 6.13 |# 

(define (greet person)
  (cond ((member? (first person) '(dr professor mrs mr miss sir dame)) (se 'Hello (first person) (last person)))
        ((member? (first person) '(king queen)) (se '(Hello your Majesty.)))
        (else (se 'Hello (first name)))))

|# I've done this problem before (see learningcode on github), not adding more kinds of names for now.

#| 6.14 |#

(define (describe-time time)
  (cond ((< time 60) (se time 'seconds))
        ((< time 3600) (se (/ time 60) 'minutes))
        ((< time 86400) (se (/ time 3600) 'hours))
        ((< time 2635200) (se (/ time 86400) 'days))
        ((< time 31622400) (se (/ time 2635200) 'months))
        ((< time 316224000) (se (/ time 31622400) 'years))
        ((< time 3162240000) (se (/ time 316224000) 'decades))
        ((< time 31622400000) (se (/time 3162240000) 'centuries))
        ((> time 31622400000) (se (/ time 3162240000) 'millennia))
        (else 'eh?)
        ))


