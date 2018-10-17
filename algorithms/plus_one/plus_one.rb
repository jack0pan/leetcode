# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  c = 0
  n = Array.new(digits.length + 1)
  i = digits.length - 1
  while i >= 0
    if i == digits.length - 1
      s = digits[i] + 1
    else
      s = digits[i] + c
    end
    n[i + 1] = s % 10
    c = s / 10
    i -= 1
  end
  if c == 0
    return n[1..-1]
  else
    n[0] = c
    return n
  end
end
