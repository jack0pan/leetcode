# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  i = a.length - 1
  j = b.length - 1
  carry = 0
  c = ""
  while i >= 0 or j >= 0
    x = i >= 0 ? a[i].to_i : 0
    y = j >= 0 ? b[j].to_i : 0
    sum = x + y + carry
    c = (sum % 2).to_s + c
    carry = sum / 2
    i -= 1
    j -= 1
  end
  c = "1" + c if carry == 1
  return c
end
