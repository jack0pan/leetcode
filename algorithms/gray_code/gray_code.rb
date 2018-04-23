# @param {Integer} n
# @return {Integer[]}
def gray_code(n)
  i, total, result = 0, 1 << n, []
  total.times.each do |i|
    result.push((i >> 1) ^ i)
  end
  result
end
