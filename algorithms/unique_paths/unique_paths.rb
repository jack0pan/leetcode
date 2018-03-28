# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  low = m - 1
  high = m + n - 2
  delta = high - low + 1
  dom, dedom = 1, 1
  while high >= delta
    dedom *= high
    high -= 1
  end
  while low > 0
    dom *= low
    low -= 1
  end
  return dedom / dom
end
