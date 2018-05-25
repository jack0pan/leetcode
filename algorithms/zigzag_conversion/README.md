# 6. ZigZag Conversion
## 算法
我们先看一个具体的例子来找规律：
```
Input: s = "PAYPALISHIRING", numRows = 4
Explanation:
P     I    N
A   L S  I G
Y A   H R
P     I
```

我们把每个字符换成它所在行的坐标：
```
0     0    0
1   1 1  1 1
2 2   2 2
3     3
```

恢复成原始的样子：`01232101232101`，规律很明显了。所以我们把每个字母放到对应的行上，最后把每行合并即可。

## 复杂度
- 时间复杂度：`O(n)`
- 空间复杂度：`O(1)`

