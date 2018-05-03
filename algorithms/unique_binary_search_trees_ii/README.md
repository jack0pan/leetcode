# 95. Unique Binary Search Trees II
## 算法
思路跟[Unique Binary Search Trees](https://leetcode.com/problems/unique-binary-search-trees/description/)的类似。
- 每选一个节点为根，就要递归求解左右子树的所有情况。
- 遍历左右子树的所有情况，把当前节点和左右子树拼接起来。

## 复杂度
- 时间复杂度：`O(n!)`
- 空间复杂度：`O(n!)`
