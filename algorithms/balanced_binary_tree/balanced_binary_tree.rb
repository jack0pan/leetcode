# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  if root
    return depth(root) != -1
  else
    return true
  end
end
  
def depth(root)
  return 0 if root.nil?
  
  left_depth = depth(root.left)
  return -1 if left_depth == -1
  
  right_depth = depth(root.right)
  return -1 if right_depth == -1
  
  delta = left_depth - right_depth
  if delta > 1 or delta < -1
    return -1
  else
    return delta > 0 ? left_depth + 1 : right_depth + 1
  end
end
