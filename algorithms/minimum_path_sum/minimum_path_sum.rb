# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  return 0 if grid.size == 0 or grid[0].size == 0
  m, n = grid.size, grid[0].size
  dp = Array.new(m){ Array.new(n, 0) }
  dp[0][0] = grid[0][0]
  for i in 1..(m - 1); dp[i][0] = grid[i][0] + dp[i - 1][0]; end
  for i in 1..(n - 1); dp[0][i] = grid[0][i] + dp[0][i - 1]; end
  for i in 1..(m - 1)
    for j in 1..(n - 1)
      dp[i][j] = grid[i][j] + [dp[i - 1][j], dp[i][j - 1]].min
    end
  end
  return dp[m - 1][n - 1]
end
