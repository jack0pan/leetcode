# 109. Convert Sorted List to Binary Search Tree
## 算法
这个和[Convert Sorted Array to Binary Search Tree](https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/description/)区别在于链表无法提前知道长度，先把链表遍历一般计算出长度，先遍历左子树，构造根节点，再遍历右子树。这里要用一个元素的空间在存储当前遍历到链表节点。

## 复杂度
- 时间复杂度：`O(n)`
- 空间复杂度：`O(n)`
