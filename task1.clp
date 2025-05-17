(deftemplate animal
  (slot type))

(defrule check_animal
  ?a <- (animal (type ?t&~dog&~cat))
  =>
  (printout t "This animal is a " ?t "." crlf))
