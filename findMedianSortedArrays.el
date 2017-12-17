(defun findMedianSortedArrays (nums1  nums2)
  ((lambda (x) (if (not (equal (% (length x) 2) 0))
		   (nth (/ (length x) 2) x)
		 (/ (+ (nth (- (/ (length x) 2) 1) x) (nth (/ (length x) 2) x)) 2.0)))
     (sort (append nums1 nums2) '<)))
