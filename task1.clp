         CLIPS (6.4.2 1/14/25)
CLIPS> (deftemplate animal
   (slot type)
)

CLIPS> (assert (animal (type dog)))
<Fact-1>
CLIPS> (assert (animal (type cat)))
<Fact-2>
CLIPS> (assert (animal (type horse)))
<Fact-3>
CLIPS> (defrule check_animal
  ?a <- (animal (type ?t))
  (test (neq ?t dog))
  (test (neq ?t cat))
  =>
  (printout t "Animal type is: " ?t crlf)
)

CLIPS> (run)

Animal type is: horse
