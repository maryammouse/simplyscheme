|# 7.1 #|

(define (gertrude wd)
  (let ((test (se (if (vowel? (first wd)) 'an 'a) wd)))
  (se test 'is test 'is test)))

#| 7.2 |#

(let ((pi 3.141519)
      (pie (se 'lemon 'meringue)))
     (se '(pi is) pi '(but pie is) pie))

#| 7.3 |#

(define (superlative adjective wd)
  (se (word adjective 'est) wd))

#| It wasn't working before because we were using the name of a procedure for our formal parameter - 
 | so where we wanted to subsitute our variable in the function, we subsitututed the procedure, which acted up. |#

#| 7.4  |#

(define (sum-square a b)
  (let ((+ *)
        (* +))
    (* (+ a a) (+ b b))))

#| The procedure adds together the sum of the squares of a and b.
 | How does it do it?
 | It simply swaps the functions associated with the + and * signs around
 | so that now the + is the name of the multiplication procedure and the *
 | sign is the name of the addition procedure. |#


