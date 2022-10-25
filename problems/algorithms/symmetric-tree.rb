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
# @return {Boolean}
def is_symmetric(root)
    compare_trees(root&.left, root&.right)
end

def compare_trees(left, right)
    return true if left.nil? && right.nil?
    return false if left.nil? || right.nil?
    return false if left&.val != right&.val
    
    compare_trees(left.left, right.right) && compare_trees(left.right, right.left)
end
