# 106. Construct Binary Tree from Inorder and Postorder Traversal
## 算法
通过后序遍历数组我们可以知道最后一个元素为根节点，然后去中序遍历中找到该元素，它左边的为左子树，右边的为右子树。这样递归遍历两个数组即可得到二叉树。

## 复杂度
- 时间复杂度：`O(n)`
- 空间复杂度：`O(n)`
