# Emacs Lisp Fun Practice
For anyone who likes to play aroud leetcode Questions with Emacs Lisp,
i've provided some lisp solutions for some leedcode questions.
More lisp solutions for leecode will be continually updated.

# lisp solution list
1. maximal rectangle </br>
   question => https://leetcode.com/problems/maximal-rectangle/description/ </br>
   solution => MaxRectangle.el </br>
   usage => (maxRectangle '("1011" "1111"))
   
2. Kth Smallest Element in a BST </br>
   question => https://leetcode.com/problems/kth-smallest-element-in-a-bst/description/ </br>
   solution => kth.el </br>
   usage => (kthSmallest '(10 (5 nil  nil) (20 nil nil)) 2), you get 10
   
3. Serialize and Deserialize Binary Tree </br>
   question => https://leetcode.com/problems/serialize-and-deserialize-binary-tree/description/ </br>
   solution => serial-deserial.el </br>
   usage => (serial '(1 nil (2 nil (3)))), you get (1 nil 2 nil 3 nil nil) </br>
   usage => (deserial '(1 nil 2 nil 3 nil nil)), you get (1 nil (2 nil (3)))

4. Median of Two Sorted Arrays </br>
   question => https://leetcode.com/problems/median-of-two-sorted-arrays/description/ </br>
   solution => findMedianSortedArrays.el </br>
   usage => (findMedianSortedArrays '(1 2 3 4 5) '(3 4)), you get 3


5. Maximum Subarray </br>
   question => https://leetcode.com/problems/maximum-subarray/description/
   solution => MaxSubarray.el </br>
   usage => (MaxSubarry '(-2 1 -3 4 -1 2 1 -5 4)), you get 6