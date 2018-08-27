# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.length == 0
  h = ["abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
  if digits.length == 1
    return h[digits[0].to_i - 2].chars
  else
    comb = Array.new
    previous = letter_combinations(digits[0..-2])
    h[digits[-1].to_i - 2].chars.each do |char|
      previous.map{ |p| comb.push(p + char) }
    end
    return comb
  end
end
