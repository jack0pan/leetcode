# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  return [ [ 1 ] ] if n == 1
  matrix = Array.new(n){ Array.new(n, 0) }
  seen = Array.new(n){ Array.new(n, false) }
  dr = [0, 1, 0, -1]
  dc = [1, 0, -1, 0]
  r = c = di = 0
  (n * n).times.each do | i |
    matrix[r][c] = i + 1
    seen[r][c] = true
    cr, cc = r + dr[di], c + dc[di]
    if 0 <= cr and cr < n and 0 <= cc and cc < n and not seen[cr][cc]
      r, c = cr, cc
    else
      di = (di + 1) % 4
      r, c = r + dr[di], c + dc[di]
    end
  end
  return matrix
end

