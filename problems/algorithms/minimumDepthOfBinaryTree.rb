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
# @return {Integer}
def min_depth(root)
    return 0 if root.nil?
    
    queue = []
    queue << [root, 1]
    
    while !queue.empty?
        n, d = queue.shift
        
        return d if n.left.nil? && n.right.nil?
        
        queue << [n.left, d+1] if !n.left.nil?
        queue << [n.right, d+1] if !n.right.nil?
    end
end
