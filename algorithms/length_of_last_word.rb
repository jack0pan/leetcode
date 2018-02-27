# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  return 0 if s.length == 0
  j = s.length - 1
  while s[j] == ' ' and j >= 0
    j -= 1
  end
  return 0 if j == -1
  i = j
  while i >= 0
    if s[i] == ' '
      return j - i
    else
      i -= 1
    end
  end
  return j + 1
end
