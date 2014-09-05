#| 4.1
 | (+ 8 (* 2 12))
 |#

#| 4.2
 | Carey - division specialist. Hired by Melisandre. Solves (/ 8 2). Gives result to Melisandre.
 | Melisandre - multiplication specialist. Hired by Amanda. Solves (* 4 2). (4 given by Carey) . Gives to Amanda.
 | Amanda - addition specialist. Hired by Alvin. Solves (+ 3 8). Gives result to Alvin.
 | Alvin - procedure specialist. He da boss! (lol). After giving Amanda the procedure, he leaves her to hire others.
 | When she is done and gives him the final result, Alvin prints it.
 |#

#| 4.3
 | (define (f x y) (- y x)) - the procedure f takes x and y and subtracts y from x.
 | (define (identity x) x) - the procedure identity takes x and returns x.
 | (define (three x) 3) - procedure three takes x and returns 3.
 | (define (seven) 7) - procedure seven takes no parameters and returns 7.
 | (define (magic n)
 |   (- (/ (+ (+ (* 3 n)
 |              13)
 |              (- n 1))
 |              4)
 |          3))
 |          - the procedure magic takes n and multiplies by three
 |          It then adds the result of that to 13.
 |          It adds this result to (- n 1)
 |          It divides the result by 4.
 |          After that it subtracts the result by 3.
 |#

#| 4.4
 | a. Attempts to return two results, can only return one!
 | b. Incorrect syntax
 | c. base and height are not defined.
 | d. cannot have procedures as parameters!
 |#

#| 4.5
 | (define (fahrenheit cels)
 |   (+ 32 (/ (* cels 9) 5)))
 | (define (celsius fah)
 |   (- (/ (* 5 fah) 9) 32))
 |#

#| 4.6
 | (define (fourth x)
 | (* x x x x))
 | 
 | (define (fourth x)
 | (square (square x)))
 |#

#| 4.7
 | (define (absolute x)
 |   (sqrt (square x)))
 |#

#| 4.8
 | (define (scientific x y)
 | (* x (expt 10 y)))
 |
 | Hotshot Time...(faulty versions...you can tell how, right?)
 |
 | (define (sci-coefficient x)
 |  (/ x (expt 10 (appearances 0 x))))
 |
 |
 | (define (sci-exponent x)
 |  (appearances 0 x))
 |
 |#

#| 4.9
 | (define (discount x y)
 |  (- x (* x (/ y 100))))
 |#

#| 4.10
 | (define (tip x)
 | (+ (- (ceiling (+ x (* x 0.15))) (+ x (* x 0.15))) (* x 0.15)))
