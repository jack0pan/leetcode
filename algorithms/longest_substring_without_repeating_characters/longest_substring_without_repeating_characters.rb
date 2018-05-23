# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  max = 0
  start = 0
  hash = Hash.new(-1)
  s.chars.each_with_index do |char, i|
    start = start > hash[char] + 1 ? start : hash[char] + 1
    hash[char] = i
    max = max > i - start + 1 ? max : i - start + 1
  end
  max
end
