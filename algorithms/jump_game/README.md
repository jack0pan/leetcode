# 55. Jump Game
## 贪婪算法
假设，我们能到达终点，那我们就找前一步如何到达这里，这样一直往前走，看看能不能到达起点。总结成公式如下：
```
current_position + nums[current_position] >= left_most_good_index
```
利用这个公式，从右往左一直找，看看能不能找回起点。

## 复杂度
- 时间复杂度：O(n)，我们只需遍历一遍nums即可。
- 空间复杂度：O(1)，不需要额外的空间。

