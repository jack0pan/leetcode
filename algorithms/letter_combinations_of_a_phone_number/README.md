# 17. Letter Combinations of a Phone Number
## 算法
主思路是用递归解决：
- 当n = 1时，返回数组对应的所有字母；
- 当n > 1时，在n - 1的结果上加上第n个数字对应的字母。

## 复杂度
- 时间复杂度：`O(3^n)`
- 空间复杂度：`O(3^n)`

