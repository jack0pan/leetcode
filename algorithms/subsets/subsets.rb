# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  nums.sort!
  path, result = [], []
  _subsets(nums, 0, path, result)
  return result
end

def _subsets(nums, index, path, result)
  result.push(path.dup)
  i = index
  while i < nums.length
    path.push(nums[i]);
    _subsets(nums, i + 1, path, result)
    path.pop
    i += 1
  end
end
