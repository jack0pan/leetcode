# @param {Integer} x
# @return {Integer}
def reverse(x)
  return 0 if x == 0
  s = x / x.abs
  x = x.abs
  result = 0
  while x > 0
    x, mod = x.divmod(10)
    result = result * 10 + mod
  end
  result *= s
  (result > 2147483647 or result < -2147483648) ? 0 : result
end