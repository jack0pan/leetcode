# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  parents = {
    "}" => "{",
    "]" => "[",
    ")" => "("
  }

  s.each_char do |c|
    if parents.values.include? c
      stack << c
    elsif parents.keys.include? c
      return false unless stack[-1] == parents[c]
      stack.pop
    end
  end

  stack.empty?
end
