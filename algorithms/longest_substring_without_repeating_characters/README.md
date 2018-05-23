# 3. Longest Substring Without Repeating Characters
## 算法
计算没有重复字母的最长子串。把遍历过的字母都存入hash中，value就是它们的索引值。

在后面的遍历中如果遇到hash中存在的字符，说明子串已经找出来了，计算长度，并判断是否比存的最大值大。

## 复杂度
- 时间复杂度：`O(n)`
- 空间复杂度：`O(1)`
