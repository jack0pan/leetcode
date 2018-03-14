# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  max_int = 2147483647
  flag = ((dividend < 0 and divisor >= 0) or (dividend >= 0 and divisor < 0)) ? -1 : 1
  x, y = dividend.abs, divisor.abs
  result = 0
  while x >= y
    tmp, i = y, 1
    while x >= tmp
      x -= tmp
      result += i
      i <<= 1
      tmp <<= 1
    end
  end
  result = flag >= 0 ? result : -result 
  [max_int, result].min
end
