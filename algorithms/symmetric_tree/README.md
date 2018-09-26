# 101. Symmetric Tree
## 算法
判断二叉树是否为镜像树。用递归思路：
- 从根节点开始，去判断它的左右子树。
- 当前两个节点的值相同，继续往下判断。
- 往下判断时，拿一个节点左子树和另一个节点的右子树比较，一个节点右子树和另一个节点左子树比较。

## 复杂度
- 时间复杂度：`O(n)`
- 空间复杂度：`O(1)`