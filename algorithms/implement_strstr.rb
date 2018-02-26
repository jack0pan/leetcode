# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return -1 if haystack.nil? or needle.nil? or haystack.length < needle.length
  return 0 if needle.length == 0
  i = 0
  while i + needle.length <= haystack.length
    j = 0
    while j < needle.length
      break if needle[j] != haystack[i + j]
      j += 1
    end
    return i if j == needle.length
    i += 1
  end
  return -1
end
