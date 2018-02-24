# @param {String} s
# @return {Integer}
def roman_to_int(s)
  t = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
  total = t[s[0]]
  i = 1
  while i < s.length
    cur = t[s[i]]
    pre = t[s[i - 1]]
    if cur > pre
      total = total - pre + cur - pre
    else
      total += cur
    end
    i += 1
  end
  total
end
