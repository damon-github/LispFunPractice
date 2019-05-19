
(defun i-enumerate (org &optional index)
  (if org
      (cons (cons (car org) (if (eq index nil) (setq index 0) index) )
	    (i-enumerate (cdr org) (+ 1 index)))
    (list)))
  

(defun validate (org seqs)
  (catch 'loop
    (let ((sum 0) (res t) (res2 t))
      (when (> (length org) 10000) nil)
      (dolist (seq seqs res)
	(setq sum (+ sum (length seq)))
	(dolist (c seq res2)
	  (when (or (< c 1) (> c (length org)))
	    (throw 'loop nil))))
      (when (= sum 0) (throw 'loop nil))
      t)))

(defun sequenceReconstruction (org seqs)
  (catch 'result
    (when (not (validate org seqs))
      (throw nil))
    (setq order (i-enumerate org))
    (setq match (make-list (- (length org) 1) 0)) 
    (let ((result 0) (result2 0))
      (dolist (seq seqs result)
	(dolist (i (number-sequence 0 (- (length seq) 2)) result2)
	  (setq cur (alist-get (nth i seq) order))
	  (setq nxt (alist-get (nth (+ i 1) seq) order))
	  (when (>= cur nxt) (throw nil))
	  (when (= (+ cur 1) nxt) (setf (nth cur match) 1))
	  ))
      (= (apply '+  match) (- (length org) 1)))))

  
(sequenceReconstruction '(4 1 5 2 6 3) '((5 2 6 3)  (4 1 5 2)))
