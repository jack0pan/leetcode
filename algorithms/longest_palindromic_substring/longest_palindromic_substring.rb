def find_palindrome(s, left, right)
  n = s.length
  while (left >= 0 && right <= n-1 && s[left] == s[right])
    left -= 1
    right += 1
  end
  s[(left + 1)..(right - 1)]
end

# @param {String} s
# @return {String}
def longest_palindrome(s)
  i, n = 0, s.length
  return s if n <= 1
  
  longest = ""
  while i < n - 1
    str = find_palindrome(s, i, i)
    longest = str if str.length > longest.length
    str = find_palindrome(s, i, i + 1)
    longest = str if str.length > longest.length
    i += 1
  end
  longest
end

