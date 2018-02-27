# @param {Integer} n
# @return {String}
def count_and_say(n)
  return "" if n <= 0
  return "1" if n == 1
  pre = count_and_say(n - 1) + "#"
  i = 0
  count = 1
  s = ""
  while i < pre.length - 1
    if pre[i] == pre[i + 1]
      count += 1
    else
      s += count.to_s + pre[i]
      count = 1
    end
    i += 1
  end
  return s
end
