(deftemplate number
  (slot value))

(defrule Odd_number
  ?n <- (number (value ?v&:(neq (mod ?v 2) 0)))
  =>
  (printout t "The number is odd" crlf))
