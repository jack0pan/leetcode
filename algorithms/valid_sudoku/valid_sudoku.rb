# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  rows = Array.new(9){ Array.new(9, false) }
  columns = Array.new(9){ Array.new(9, false) }
  girds = Array.new(9){ Array.new(9, false) }
  9.times.each do |i|
    9.times.each do |j|
      next if board[i][j] == "."
      c = board[i][j].to_i - 1
      gird = 3 * (i / 3) + j / 3
      return false if (rows[i][c] or columns[j][c] or girds[gird][c])
      rows[i][c] = true
      columns[j][c] = true
      girds[gird][c] = true
    end
  end
  return true
end
