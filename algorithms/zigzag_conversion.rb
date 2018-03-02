# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  result = Array.new(num_rows, "")
  tail_size = num_rows > 2 ? num_rows - 2 : 0
  group_size = num_rows + tail_size
  s.length.times do |i|  
    in_group_position = i % group_size
    target_row = in_group_position < num_rows ? in_group_position : num_rows - 2 - (in_group_position - num_rows)
    result[target_row] += s[i]
  end  
  result.join
end
