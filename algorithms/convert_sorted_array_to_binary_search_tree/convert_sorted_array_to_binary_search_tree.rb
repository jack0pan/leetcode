# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  helper(nums, 0, nums.length - 1)
end

def helper(nums, left, right)
  return nil if left > right
  m = (left + right) / 2
  root = TreeNode.new(nums[m])
  root.left = helper(nums, left, m - 1)
  root.right = helper(nums, m + 1, right)
  root
end
