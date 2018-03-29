# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
  return 0 if obstacle_grid.size == 0 or obstacle_grid[0].size == 0
  m = obstacle_grid.size
  n = obstacle_grid[0].size
  return 0 if obstacle_grid[0][0] == 1
  dp = Array.new(n, 0)
  i, dp[0] = 0, 1
  while i < m
    j = 0
    while j < n
      if obstacle_grid[i][j] == 1
        dp[j] = 0
      elsif j > 0
        dp[j] += dp[j - 1]
      end
      j += 1
    end
    i += 1
  end
  return dp[n - 1]
end
