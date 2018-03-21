# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  result = Hash.new
  strs.each do |str|
    index = str.chars.sort
    if result.has_key?(index)
      result[index].push str
    else
      result[index] = [str]
    end
  end
  result.values
end
