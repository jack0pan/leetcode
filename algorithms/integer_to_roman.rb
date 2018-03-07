# @param {Integer} num
# @return {String}
def int_to_roman(num)
  t = { 1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I' }
  hs = [1000, 100, 10, 1]
  roman = ""
  hs.each do |h|
    c = num / h
    if c == 9 or c == 4
      roman += t[h] + t[(c + 1) * h]
    elsif c >= 5
      roman += t[5 * h] + t[h] * (c - 5)
    elsif c > 0
      roman += t[h] * c
    end
    num -= c * h
    return roman if num == 0
  end
  return roman
end
