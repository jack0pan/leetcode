# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  return [""] if n == 0
  array = Array.new
  n.times.each do |i|
    lefts = generate_parenthesis(i)
    rights = generate_parenthesis(n - 1 - i)
    lefts.each do |left|
      rights.each do |right|
        array.push("(#{left})#{right}")
      end
    end
  end
  return array
end
