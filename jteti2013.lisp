;;;; John Teti
;;;  jteti2013@fau.edu

;;;  1. Implement a recursive function called filter-out-the in Common Lisp.
;;;     filter-out-the takes a list of symbols and returns a list from which all
;;;     instances of the symbols "the" have been removed

(defun filter-out-the(list)
  (cond ((null list) nil)
	((equal 'the (car list))
	 (filter-out-the (cdr list)))
	(T (cons (car list)
		 (filter-out-the (cdr list))))))


;;;  2. Write a prodecdure called SCHEDULE that takes a weekday as and 
;;;  argument and retrieves a list of your commitments on that day.

(defun schedule (day)
  (case day
	(monday (list '(VECTOR-CALCULUS "9:30-11:00") '(PHYSICS "11:00-12:00") '(PHYS-ED "3:00-4:00")))
	(tuesday (list '(ECONOMICS "10:00-11:00") '(PHYSICS "5:30-7:00")))
	(wednesday (list '(VECTOR-CALCULUS "9:30-11:00") '(PHYSICS "11:00-12:00") '(PHYS-ED "3:00-4:00")))
	(thursday (list '(ECONOMICS "10:00-11:00")))
	(friday (list '(VECTOR-CALCULUS "9:30-11:00") '(PHYSICS "11:00-12:00") '(PHYS-ED "3:00-4:00")))))




;;;  3. Write a function called eq_list that compares two lists. 
;;;  IF they are the same, return T, otherwise, return NIL

(defun eq_list (list1 list2)
  (and (equal (null (intersection list1 list2)) nil)
	(null (set-difference list1 list2))))
