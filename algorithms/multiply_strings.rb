# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  num1.reverse!
  num2.reverse!
  s = Array.new(num1.length + num2.length, 48)
  num1.bytes.each_with_index do |n1, i|
    num2.bytes.each_with_index do |n2, j|
      tmp = (n1 - 48) * (n2 - 48)
      s[i+j+1] = s[i+j+1] - 48 + (s[i+j] - 48 + tmp) / 10 + 48    
      s[i+j] = (s[i+j] - 48 + tmp) % 10 + 48
    end
  end
  s.reverse!
  s = s[1..-1] while s.length > 1 and s[0] == 48
  s.pack('c*')
end
