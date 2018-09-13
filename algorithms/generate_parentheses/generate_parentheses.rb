# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  @sol = []
  generate(n*2,0,0,"")
  return @sol
end

def generate(n, i, open, par)
  if(n == i)
    @sol << par
    return
  end
  
  if(open == 0)
    generate(n, i+1, open+1, par + "(")
  elsif(n-i == open)
    generate(n, i+1, open-1, par + ")")
  else
    generate(n, i+1, open+1, par + "(")
    generate(n, i+1, open-1, par + ")")
  end
end
