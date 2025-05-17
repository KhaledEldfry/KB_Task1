(deftemplate animal
   (slot type)
)

(assert (animal (type dog)))
(assert (animal (type cat)))
(assert (animal (type horse)))

(defrule check_animal
  ?a <- (animal (type ?t))
  (test (neq ?t dog))
  (test (neq ?t cat))
  =>
  (printout t "Animal type is: " ?t crlf)
)
