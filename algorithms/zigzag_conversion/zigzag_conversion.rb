# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1 || num_rows >= s.length
  characters = Array.new(num_rows) { '' }
  index, step = 0, 1
  s.chars.each do |character|
    characters[index] += character
    if index == 0
      step = 1
    elsif index == num_rows - 1
      step = -1
    end
    index += step
  end
  characters.join
end
