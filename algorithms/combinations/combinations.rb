# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  path, result = [], []
  _combine(n, k, 1, path, result)
  return result
end

def _combine(n, k, start, path, result)
  if path.size == k
    new_path = path.dup
    result.push(new_path)
  else
    i = start
    while i <= n
      path.push(i);
      _combine(n, k, i + 1, path, result)
      path.pop
      i += 1
    end
  end
end
