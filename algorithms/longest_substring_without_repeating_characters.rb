# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  ans = 0;
  hash = Hash.new
  i, j = 0, 0
  while j < s.length
    if hash.has_key?(s[j])
      i = hash[s[j]] > i ? hash[s[j]] : i
    end
    ans = ans > j - i + 1 ? ans : j - i + 1
    hash[s[j]] = j + 1
    j += 1
  end
  return ans;
end
