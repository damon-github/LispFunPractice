(defun maxRectangle (matrix)
  (setq matrixRowSize (length matrix))
  (setq matrixColSize (length (car matrix)))
  (setq h (make-list (+ 1 matrixColSize) 0))
  (setq ans 0)
  (setq row 0)
  (while (< row matrixRowSize)
    (setq i 0)
    (while (< i matrixColSize)
      (if (eql ?1 (aref (nth row matrix) i))
	  (setcar (nthcdr i h) (+ 1 (nth i h)))
	(setcar (nthcdr i h) 0))
      (setq i (+ 1 i))
      )
    (setq stack '(-1))
    (setq i 0)
    (while (< i (+ 1 matrixColSize))
       
      (while (and (< (nth i h) (nth (car stack) h) ) (not (eq -1 (car stack))))
	(setq hval (nth (pop stack) h))
	(setq wval (- i 1 (car stack)))
	(setq ans (if (> (* hval wval) ans) (* hval wval) ans)) 
	)
      (push i stack)
      (setq i (+ 1 i))
      )
    (setq row (+ 1 row))
    )
  ans
  )