# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0 or (x % 10 == 0 and x != 0)
  r = 0
  while x > r
    x, mod = x.divmod(10)
    r = r * 10 + mod
  end
  x == r or x == r / 10
end
