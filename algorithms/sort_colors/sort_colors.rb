# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  i, red, blue = 0, 0, nums.length - 1
  while i <= blue
    if nums[i] == 0
      swap(nums, i, red)
      red += 1
    elsif nums[i] == 2
      swap(nums, i, blue)
      i -= 1
      blue -= 1
    end
    i += 1
  end
end

def swap(nums, i, j)
  tmp = nums[i]
  nums[i] = nums[j]
  nums[j] = tmp
end
