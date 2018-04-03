# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  m = matrix.size
  (0..(m - 1)).each do |i|
    n = matrix[i].size
    next if n == 0
    if matrix[i][0] <= target and target <= matrix[i][-1]
      (0..(n - 1)).each do |j|
        return true if matrix[i][j] == target
      end
    end
  end
  return false 
end
