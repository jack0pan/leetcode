# 26. Remove Duplicates from Sorted Array
## 算法
用两个指针把指针之间相同元素给去掉。示例过程如下：
```
1 2 2 2 3 4 4 5
i j

1 2 2 2 3 4 4 5
  i j

1 2 2 2 3 4 4 5
  i   j

1 2 2 2 3 4 4 5
  i     j

1 2 3 2 3 4 4 5
    i     j

1 2 3 4 3 4 4 5
      i     j

1 2 3 4 5 4 4 5
        i     j
```

## 复杂度
- 时间复杂度：`O(N)`
- 空间复杂度：`O(1)`
