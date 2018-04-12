# 81. Search in Rotated Sorted Array II
## 算法
这题和[Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/description/)的区别在于，数组里有重复数字，这会导致`[2 1 1]`和`[1 1 1 2 1]`两种情况出现，就是中间值和右值相同。对此处理只需将右值左移即可。

## 复杂度
- 时间复杂度：`O(n)`，右值左移这种情况会是复杂度提升。
- 空间复杂度：`O(1)`

