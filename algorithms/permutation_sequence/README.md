# 60. Permutation Sequence
## 算法
假设 n = 3，则全排列为：
```
"123"
"132"
"213"
"231"
"312"
"321"
```
第一个数字每`(n - 1)!`次就改变，这样用`k / (n -
1)!`可以算出第一个数字，然后依次类推就可以计算后面的数字。

## 复杂度
- 时间复杂度：`O(n)`，需要把n遍历两边。
- 空间复杂度：`O(n)`，辅助数组存`1..n`。

