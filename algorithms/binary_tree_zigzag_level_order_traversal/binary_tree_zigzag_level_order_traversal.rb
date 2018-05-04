# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
  result, queue = [], []
  return result if root.nil?
  queue << root
  reverse = false
  while not queue.empty?
    level = []
    next_level = []
    queue.each do |node|
      level << node.val
      next_level << node.left if node.left
      next_level << node.right if node.right
    end
    if reverse
      result << level.reverse
      reverse = false
    else
      result << level
      reverse = true
    end
    queue = next_level
  end
  return result
end
