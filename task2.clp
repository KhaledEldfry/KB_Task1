         CLIPS (6.4.2 1/14/25)
CLIPS> (deftemplate number
   (slot value)
)
CLIPS> (assert (number (value 5)))
<Fact-1>
CLIPS> (defrule Odd_number
  (number (value ?n))
  (test (= (mod ?n 2) 1))
  =>
  (printout t "The number is odd" crlf)
)
CLIPS> (run)
The number is odd
CLIPS> 

