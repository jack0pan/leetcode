# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.length == 0
  min_size = 10000
  min_index = -1
  strs.each_with_index do |str, index|
    if str.length < min_size
      min_size = str.length
      min_index = index
    end
  end
  i = min_size - 1
  while i >= 0
    prefix = strs[min_index][0..i]
    found = true
    strs.each_with_index do |str, index|
      next if index == min_index
      if prefix != str[0..i]
        found = false
        break
      end
    end
    return prefix if found
    i -= 1
  end
  return ""
end
