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
def is_symmetric(root)
  if root
    helper(root.left, root.right)
  else
    return true 
  end
end

def helper(node1, node2)
  if node1.nil? and node2.nil?
    return true
  elsif node1.nil? or node2.nil?
    return false
  elsif node1.val != node2.val
    return false
  else
    return helper(node1.left, node2.right) && helper(node1.right, node2.left)
  end
end
