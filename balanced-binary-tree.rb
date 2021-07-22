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
def is_balanced(root)
    @bool = true
    def dfs(node, depth)
        return depth - 1 unless node

        t1 = dfs(node.left, depth + 1)
        t2 = dfs(node.right, depth + 1)

        @bool = false if (t1 - t2).abs > 1

        return [t1, t2].max
    end

    dfs(root, 0)
    @bool
end