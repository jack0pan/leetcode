# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  path = []
  _traversal(path, root)
  return path
end

def _traversal(path, node)
  if node.nil?
    return
  else
    _traversal(path, node.left)
    path.push node.val
    _traversal(path, node.right)
  end
end
