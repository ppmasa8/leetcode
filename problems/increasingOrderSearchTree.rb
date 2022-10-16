# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {TreeNode}
def increasing_bst(root, parent = nil)
    return parent if root.nil?
    root.right = increasing_bst(root.right, parent)
    left, root.left = root.left, nil
    increasing_bst(left, root)
end
