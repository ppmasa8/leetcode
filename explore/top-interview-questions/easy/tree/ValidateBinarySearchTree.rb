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
def is_valid_bst(root)
    stack = []; result = [];
    while stack.any? || root
        while root
            stack << root
            root = root.left
        end
        root = stack.pop
        result << root.val
        root = root.right
    end
    
    (result.length - 1).times do |i|
        return false if result[i] >= result[i + 1]
    end
    return true      
end