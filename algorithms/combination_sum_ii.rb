# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
  path, result = [], []
  candidates.sort!
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
      _combination_sum(candidates, target - candidates[i], i + 1, path, result)
      path.pop
      while (i < candidates.length - 1 and candidates[i] == candidates[i + 1])
        i += 1
      end
      i += 1
    end
  end
end
