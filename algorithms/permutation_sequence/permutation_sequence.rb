# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_permutation(n, k)
  mod, i = 1, 1
  candidates = []
  while i <= n
    mod = mod * i
    candidates.push(i)
    i += 1
  end
  k -= 1
  result = ""
  i = 0
  while i < n
    mod = mod / (n - i)
    first = k / mod
    k = k % mod
    result += candidates[first].to_s
    candidates.delete_at(first)
    i += 1
  end
  return result
end
