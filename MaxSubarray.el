(defun MaxSubarry (x)
  (let ((index 0)
	(sum 0)
	(max 0))
    (while (< index (length x))
      (setq sum (+ sum (nth index x)))
      (when (< sum 0) (setq sum 0))
      (when (> sum max) (setq max sum))
      (setq index (+ 1 index)))
    max))
