# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
  nums.sort!
  used = Array.new(nums.length, false)
  tmp, result = [], []
  _permute(nums, tmp, used, result)
  return result
end

def _permute(nums, tmp, used, result)
  if tmp.length == nums.length
    new_tmp = tmp.dup
    result.push new_tmp
  else
    i = 0
    while i < nums.length
      if used[i]
        i += 1
        next
      end
      used[i] = true
      tmp.push nums[i]
      _permute(nums, tmp, used, result)
      tmp.pop
      used[i] = false
      while i < nums.length - 1 and nums[i] == nums[i + 1]
        i += 1
      end
      i += 1
    end
  end
end
