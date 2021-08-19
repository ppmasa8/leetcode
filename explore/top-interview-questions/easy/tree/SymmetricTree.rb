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
    q = []
    q << [root.left, root.right] if root
    
    until q.empty?
        left, right = q.pop
        
        if left && right
            return false unless left.val == right.val
            q << [left.left,right.right]
            q << [left.right, right.left]
        elsif left.nil? && right.nil?
            next
        else
            return false
        end
    end
    
    return true
end