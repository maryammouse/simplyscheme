#| 8.1 
 | '(a e i o u)
 |
 | '()
 |
 | 0
 |
 | #f
 |
 | '(16 144 0)
 |
 | 'ai
 |
 | 25
 |
 | '(g)
 |
 |#

#| 8.2
 |
 | keep
 |
 | every
 |
 | first
 |
 | every last
 |
 | accumulate word every last
 |
 | every
 |
 | accumulate
 |#

#| 8.3 |#

(define (f a)
  (keep even? a))

#| The function f will take any even numbers from a (which must be a sentence or word with numbers in) and print them in a sentence.

(define (g b)
  (every b '(blue jay way)))

#| g takes the argument (which must be a function) b and applies it to every word in the sentence '(blue jay way)
 |#


(define (h c d)
  (c (c d)))

#| The function h takes in a function c and an argument d and runs c with argument d, and then runs the result of that with c and returns that, which may be a number, word, sentence, or boolean.

(define (i e)
  (/ (accumulate + e) (count e)))

#| The function i takes a variable e and accumulates/adds its contents before dividing the result by the number of elements within e. The domain would be a sentence or word with only numbers within it and the result a number.

#| Accumulate - accumulate takes a procedure (domain: numbers/words/sentences) and  applies it to the first in a sentence/word, remembers the result, and keeps doing the procedure to each element and combining the results.  
 | The range is words, numbers, and sentences.

#| sqrt  - takes a number and returns the square root of the number. Domain: numbers range: numbers

#| repeated - takes a function and a number and creates a function that does the job of the supplied function to an argument the number of times based on the number given to repeated.

#| (repeated sqrt 3) - Takes the input (a number) and finds the square root of the input, then repeats this twice with the results.

#| (repeated even? 2) - Takes an input (a number), checks to see if it is even, then with the output (#t or #f) tries again to result in an error.

#| (repeated first 2) - Takes an input (a word/sentence/number) and returns the first of it, then the first of the original result. Range = number, wd

#| (repeated (repeated bf 3) 2) - Takes an input (word/sentence/number) and apples bf to it and its results 6 times. Result is wd/number/sentence


#| 8.4 (aka Real Exercises...finally!) |#

(define (ends-vowel? wd) (vowel? (last wd)))

(define (even-count? wd) (even? (count wd)))

(define (choose-beatles function)
  (keep function '(John Paul George Ringo)))

#| 8.5 |#

(define (amazify name)
  (word 'the-amazing- name))

(define (transform-beatles function)
  (every function '(John Paul George Ringo)))

#| 8.6 |#

(define (phonetic letter)
  (cond ((equal? letter 'a) 'alpha)
        ((equal? letter 'b) 'bravo)
        ((equal? letter 'c) 'charlie)
        ((equal? letter 'd) 'delta)
        ((equal? letter 'e) 'echo)
        ((equal? letter 'f) 'foxtrot)
        ((equal? letter 'g) 'golf)
        ((equal? letter 'h) 'hotel)
        ((equal? letter 'i) 'india)
        ((equal? letter 'j) 'juliet)
        ((equal? letter 'k) 'kilo)
        ((equal? letter 'l) 'lima)
        ((equal? letter 'm) 'mike)
        ((equal? letter 'n) 'november)
        ((equal? letter 'o) 'oscar)
        ((equal? letter 'p) 'papa)
        ((equal? letter 'q) 'quebec)
        ((equal? letter 'r) 'romeo)
        ((equal? letter 's) 'sierra)
        ((equal? letter 't) 'tango)
        ((equal? letter 'u) 'uniform)
        ((equal? letter 'v) 'victor)
        ((equal? letter 'w) 'whiskey)
        ((equal? letter 'x) 'xray)
        ((equal? letter 'y) 'yankee)
        ((equal? letter 'z) 'zulu)

        ))


(define (phonetic-word wd)
  (every phonetic wd))

#| 8.7 |#

(define (letter-count sent)
  (count (accumulate word sent)))

#| 8.8 |# 

(define (double n)
  (cond ((number? n) (* 2 n))
        ((equal? n 'good) 'great)
        ((equal? n 'bad) 'terrible)
        ((equal? n 'happy) 'delighted)
        ((equal? n 'sad) 'miserable)
        (else n)))

#| I could make more exaggeration conds, but it would take a forever!
 | (the question asks for anything else I can think of...)
 | (though it doesn't ask for EVERYthing else I can think of...hehe)|#


(define (exaggerate sent)
  (every double sent))

#| 8.9 |# 

#| We can use se as the first arg to every to return the original sentence (every time!)
 |
 | We can use word? as the first argument to keep to return the original sentence (every time!)
 |
 | We can use se as the first arg to accumulate to return the original sentence every time!
 |#

#| 8.10 |#

(define (true-for-all? function thing)
  (equal? thing (keep function thing)))

#| 8.11 |#

(define (base-grade grade)
  (cond ((member? 'A grade) 4)
        ((member? 'B grade) 3)
        ((member? 'C grade) 2)
        ((member? 'D grade) 1)
        ((member? 'E grade) 0)
        ))

(define (grade-modifier grade)
  (cond ((member? '- grade) -0.33)
        ((member? '+ grade) 0.33)
        (else 0)))

(define (final-grade grade)
  (+ (base-grade grade) (grade-modifier grade)))

(define (gpa grades)
  (/ (accumulate + (every final-grade grades)) (count grades)))

#| 8.12 |#

(define (um? wd)
  (equal? wd 'um))

(define (count-ums sent)
  (count (keep um? sent)))

#| 8.13 |#

(define (phone-dict letter)
  (cond ((member? letter 'abc) 2)
        ((member? letter 'def) 3)
        ((member? letter 'ghi) 4)
        ((member? letter 'jkl) 5)
        ((member? letter 'mno) 6)
        ((member? letter 'pqrs) 7)
        ((member? letter 'tuv) 8)
        ((member? letter 'wxyz) 9)
        (else '())))

(define (phone-unspell wd)
  (accumulate word (every phone-dict wd)))

#| 8.14 |#

(define (subword wd p1 p2)
