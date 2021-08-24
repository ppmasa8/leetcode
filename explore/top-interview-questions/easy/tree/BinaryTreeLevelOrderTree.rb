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
# @return {Integer[][]}
def level_order(root)
    return [] if root.nil?  
    list = []; node = [root]
    until node.empty?
        arr = []
        (0...node.size).each do |i|
            temp = node.shift
            arr << temp.val
            node << temp.left unless temp.left.nil?
            node << temp.right unless temp.right.nil?
        end
        list << arr
    end
    return list
end