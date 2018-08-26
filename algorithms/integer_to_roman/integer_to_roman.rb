# @param {Integer} num
# @return {String}
def int_to_roman(num)
  romans = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
  values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

  index = 0
  str = ""
  while num != 0
    while num >= values[index]
      num -= values[index]
      str += romans[index]
    end

    index += 1
  end
  
  return str
end
