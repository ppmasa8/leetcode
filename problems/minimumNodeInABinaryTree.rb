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
def find_second_minimum_value(root)
    arr = []
    packing(root, arr)
    arr.uniq!
    arr.size >= 2 ? arr.sort[1] : -1
end

def packing(root, arr)
    return if root.nil?
    packing(root.left, arr)
    arr << root.val
    packing(root.right, arr)
end
