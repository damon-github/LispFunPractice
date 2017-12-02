(defun kthSmallest (root k)
  (let ((stack '())
	(node root)
	(tmpnode nil)
	)
    (while (or stack node)
      (while node
	(push node stack)
	(setf node (nth 1 node))
	)
      
      (setf tmpnode (pop stack))
      (decf k)
      (if (= 0 k)
	  (return-from kthSmallest (car tmpnode))
	(setf node (nth 2 tmpnode))
	  )
      )
    )
  )

