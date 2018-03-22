# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  res = 1.0
  i = n.abs
  while i != 0
    res *= x if (i % 2 != 0)
    x *= x
    i /= 2
  end
  return n < 0 ? 1 / res : res
end
