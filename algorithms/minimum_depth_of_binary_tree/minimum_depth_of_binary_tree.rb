# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
  if root.nil?
    return 0
  elsif root.left.nil?
    return min_depth(root.right) + 1
  elsif root.right.nil?
    return min_depth(root.left) + 1
  else
    return [min_depth(root.left), min_depth(root.right)].min + 1
  end
end
