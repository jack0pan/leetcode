# 59. Spiral Matirx II
## 算法
主要思路就是按照螺旋的顺序，依次给矩阵赋值即可，中间用到辅助矩阵，来保存走过路。

## 复杂度
- 时间复杂度：`O(n * n)`，把`n * n`的矩阵遍历一遍。
- 空间复杂度：`O(n * n)`，需要`n * n`的矩阵来存结果。