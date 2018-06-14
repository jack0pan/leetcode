# @param {String} str
# @return {Integer}
def my_atoi(str)
  str.strip!
  return 0 if str.nil? or str.length == 0
  i = 0
  if str[0] == "-"
    cs, s = str[1..-1], -1
  elsif str[0] == "+"
    cs, s = str[1..-1], 1
  else
    cs, s = str, 1
  end
  return 0 if cs.nil?
  cs.each_byte do |b|
    if b >= 48 and b <= 57
      i = i * 10 + (b - 48)
    else
      break
    end
  end
  i = s * i
  if i < -2147483648
    return -2147483648
  elsif i > 2147483647
    return 2147483647
  else
    return i
  end
end
