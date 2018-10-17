# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  i = 0
  while i <= x
    m = i * i
    if m == x
      return i
    elsif m > x
      return i - 1
    end
    i += 1
  end
  return i
end
