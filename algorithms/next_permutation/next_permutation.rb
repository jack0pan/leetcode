# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  i = nums.length - 2
  while i >= 0 and nums[i + 1] <= nums[i]
    i -= 1
  end
  if i >= 0
    j = nums.length - 1
    while j >= 0 and nums[j] <= nums[i]
      j -= 1
    end
    swap(nums, i, j)
  end
  reverse(nums, i + 1)
end

def swap(nums, i, j)
  tmp = nums[i]
  nums[i] = nums[j]
  nums[j] = tmp
end

def reverse(nums, start)
  i, j = start, nums.length - 1
  while i < j
    swap(nums, i, j)
    i += 1
    j -= 1
  end
end
