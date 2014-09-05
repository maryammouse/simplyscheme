#| 5.1
 | '(I me mine)
 | '(is empty)
 | '2345
 | '(23 45)
 | ''
 | '()
 | 6
 | '()
 |#

#| 5.2
 | (define (f1 sent1 sent2)
 |    (se ( (bf sent1) (bl sent2) )))
 |
 | (define (f2 sent1 sent2)
 |   (se (bf sent1) (bl sent2) (word (first sent1) (last sent2))))
 |
 | (define (f3 sent1 sent2)
 |  (se sent1 sent1))
 |
 | 
 | (define (f4 sent1 sent2)
 |  (word (item 2 sent1) (item 2 sent2)))A
 |#

#| 5.3
 |
 | (first 'mezzanine) outputs a word '' and (first '(mezzanine)) outputs
 | a sentence '(mezzanine)
 |#

#| 5.4
 |
 | (first (square 7)) outputs a number, 4
 | (first '(square 7) outputs a sentence '(square)
 |
 |#

#| 5.5
 | (word 'a 'b 'c) = 'abc
 | (se 'a 'b 'c) = '(a b c)
 |#

#| 5.6
 | (bf 'zabadak) = 'abadak
 | (butfirst '(zabadak)) = '()
 |#

#| 5.7
 | (bf 'x) = ''
 | (butfirst '(x)) = ()
 |#


#| 5.8
 | (help!)
 |#

#| 5.9
 | '(matt wright)
 |
 | '(brian harvey)
 |#


#| 5.10
 | (butfirst 'Aether)
 | (butfirst '(Dance with Dragons))
 |#


#| 5.11
 | (last 'Adele)
 | (last '(Cordelia Naismith))
 |#

#| 5.12
 | first: '' / '()
 | last: '' '()
 | butfirst: 'a '(Markova)
 | butlast: ''  '()
 |#

#| 5.13
 | It stands for a quote and the word banana.
 | 
 | (first ''banana) is 'quote , because the first character in the word 'banana is '.
 |
 |#

#| 5.14
 |
 | (define (third wdsent)
 |   (item 3 wdsent))
 |#

#| 5.15
 | (define (first-two wd)
 | (word (first wd) (first (bf wd))))
 |#

#| 5.16
 | (define (two-first wd1 wd2)
 |  (word (first wd1) (first wd2)))
 |#

#| 5.17
 | (define (knight name)
 |   (se 'Sir name))
 |#

#| 5.18
 | This program gives us an error because we used the name
 | of a procedure as a formal parameter. Therefore instead of
 | calling the inputted parameter, the function called the function word.
 |#

#| 5.19
 | (define (insert-and sent)
 |   (sentence (bl sent) 'and (last sent)))
 |#

#| 5.20
 | (define (middle-names name)
 | (se (bf (bl name))))
 |#

#| 5.21
 | (define (query statement)
 |  (se (item 2 statement) (item 1 statement) (bl (bf (bf statement)) (word (last statement) '?)))
