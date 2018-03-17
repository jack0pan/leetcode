# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  n = matrix.length
  n.times.each do |i|
    j = i + 1
    while j < n
      tmp = matrix[i][j]
      matrix[i][j] = matrix[j][i]
      matrix[j][i] = tmp
      j += 1
    end
    matrix[i].reverse!
  end
end
