# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
    leaf_build(root1, []) == leaf_build(root2, [])
end

def leaf_build(root, array)
    return array if root == nil
    if !root.left && !root.right
        return array << root.val
    end
    return leaf_build(root.left, []) + leaf_build(root.right, array)
end
