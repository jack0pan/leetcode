# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  path, result = [], []
  _combination_sum(candidates, target, 0, path, result)
  return result
end

def _combination_sum(candidates, target, index, path, result)
  if target < 0
    return
  elsif target == 0
    new_path = path.dup
    result.push(new_path)
  else
    i = index
    while i < candidates.length
      path.push(candidates[i]);
      _combination_sum(candidates, target - candidates[i], i, path, result)
      path.pop
      i += 1
    end
  end
end
