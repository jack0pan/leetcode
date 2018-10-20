# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  return 0 if nums.nil? or nums.length == 0
  local, global = nums[0], nums[0]  
  i = 1
  while i < nums.length
    local = nums[i] > local + nums[i] ? nums[i] : local + nums[i]
    global = local > global ? local : global
    i += 1
  end
  return global
end
