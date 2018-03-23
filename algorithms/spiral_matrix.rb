# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  rows = matrix.size
  return [] if rows == 0
  columns = matrix[0].size
  seen = Array.new(rows){ Array.new(columns, false) }
  ans = []
  dr = [0, 1, 0, -1]
  dc = [1, 0, -1, 0]
  r = c = di = 0
  (rows * columns).times do
    ans.push matrix[r][c]
    seen[r][c] = true
    cr, cc = r + dr[di], c + dc[di]
    if 0 <= cr and cr < rows and 0 <= cc and cc < columns and not seen[cr][cc]
      r, c = cr, cc
    else
      di = (di + 1) % 4
      r, c = r + dr[di], c + dc[di]
    end
  end
  return ans
end
