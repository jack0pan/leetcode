# 96. Unique Binary Search Trees
## 算法
解决思路就是以任意一个数为根，比它小的数为左子树，大的为右子树，二叉搜索树的数量就是左子树数量乘以右子树的数量，总数就是以每个数为根节点的二叉搜索树的总和。

总结成公式为：
![卡特兰数](http://junzhepanblog.qiniudn.com/unique-binary-search-trees/catalan.png)

## 复杂度
- 时间复杂度：`O(n^2)`
- 空间复杂度：`O(n)`
