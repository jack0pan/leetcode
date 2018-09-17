# 24. Swap Nodes in Pairs
## 算法
这题主要思路就是用三个指针来交换节点。先创建一个假节点，用它指向head。三个指针的初始状态为：
```
dummy -> head   -> head.next -> head.next.next
first -> second -> third     -> forth
```

经过置换就变为：
```
first -> third -> second -> forth
```

然后，三个指针往下移动：
```
first -> third -> second -> forth
                  first  -> second -> third
```

就这样直到链表被遍历完。

## 复杂度
- 时间复杂度：`O(N)`
- 空间复杂度：`O(1)`

