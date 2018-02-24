# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = Array.new
  i = 0
  while i < s.length
    c = s[i]
    if c == "(" or c == "[" or c == "{"
      stack.push(c)
    elsif c == ")" or c == "]" or c == "}"
      return false if stack.length == 0
      comb = stack.pop + c
      if not (comb == "()" or comb == "[]" or comb == "{}")
        return false
      end
    end
    i += 1
  end
  stack.length == 0
end
