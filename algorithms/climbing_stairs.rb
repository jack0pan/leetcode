# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  if n == 1
    return 1
  end
  first, second, i = 1, 2, 3
  while i <= n
    third = first + second
    first = second
    second = third
    i += 1
  end
  return second;
end
