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
def postorder_traversal(root)
  return [] if root.nil?
  node, stack, path = root, [], []
  while not stack.empty? or path.empty?
    if node
      stack.push node
      node = node.left ? node.left : node.right
    else
      next_node = stack.pop 
      node = stack.last 
      while node && node.right == next_node
        path << next_node.val 
        next_node = stack.pop 
        node = stack.last 
      end 
      node = node ? node.right : nil
      path << next_node.val
    end
  end
  path
end
