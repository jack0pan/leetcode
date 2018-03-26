# 56. Merge Intervals
## 排序算法
拿到数组后先按`start`从小到大排序，然后做以下判断：
```
intervals[i - 1].end < intervals[i].start
```
如果满足，直接把当前`interval`添加到新数组中即可；如果不满足，则`end`的取值为：
```
(intervals[i - 1].end, interval[i].end)
```

## 复杂度
- 时间复杂度：O(nlgn)，排序算法的复杂度是O(nlgn)，整个过程只需遍历一遍`intervals`，总共复杂度为O(nlgn)
  + O(n)
- 空间复杂度：O(n)，我们需要拷贝一份`intervals`。

