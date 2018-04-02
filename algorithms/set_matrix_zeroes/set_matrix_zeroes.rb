# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  m = matrix.length
  return if m == 0
  n = matrix[0].length
  return if n == 0
  row, col = false, false
  m.times.each do |i|
    if matrix[i][0] == 0
      row = true
      break
    end
  end
  n.times.each do |j|
    if matrix[0][j] == 0
      col = true
      break
    end
  end
  (1..(m - 1)).each do |i|
    (1..(n - 1)).each do |j|
      if matrix[i][j] == 0
        matrix[i][0] = 0
        matrix[0][j] = 0
      end
    end
  end
  (1..(m - 1)).each do |i|
    (1..(n - 1)).each do |j|
      if matrix[i][0] == 0 or matrix[0][j] == 0
        matrix[i][j] = 0
      end
    end
  end
  if row
    m.times.each do |i|
      matrix[i][0] = 0
    end
  end
  if col
    n.times.each do |j|
      matrix[0][j] = 0
    end
  end
end
