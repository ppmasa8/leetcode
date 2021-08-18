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
def max_depth(root)
    return 0 if root.nil?
    @count = 1
    return @count if root.left.nil? && root.right.nil?
    dfs(root, @count)
    return @count
end

def dfs(node, cnt)
    if node.left.nil? && node.right.nil?
        @count = [cnt, @count].max
    end
    
    dfs(node.left, cnt+1) if node.left
    dfs(node.right, cnt+1) if node.right     
end