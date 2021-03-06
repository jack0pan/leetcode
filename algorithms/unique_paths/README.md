# 62. Unique Paths
## 算法
一开始考虑用动态规划来解，公式为：
```
unique_paths(m, n) = unique_paths(m - 1, n) + unique_paths(m, n - 1)
```
这种解法的时间复杂度是`O(m * n)`，m或n的数稍大就会超时。
换个思路，机器人总共走`m + n - 2`步，`m - 1`步往下走，`n -
1`步往右走，所以最终可以归结为组合的问题，从`m + n - 2`个数中取`m - 1`的组合数。

## 复杂度
- 时间复杂度：`O(m + n)`
- 空间复杂度：`O(1)`
