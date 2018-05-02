# @param {Integer} n
# @return {Integer}
def num_trees(n)
  return 0 if n == 0
  result = Array.new(n + 1, 0)
  result[0], result[1] = 1, 1
  (2..n).each do |i|
    i.times.each do |j|
      result[i] += result[j] * result[i - j - 1]
    end
  end
  return result[n]
end
