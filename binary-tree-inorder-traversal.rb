def inorder_traversal(root)
    @answer = []
    in_order(root) if root
    @answer
end

def in_order(x)
    in_order(x.left) if x.left
    @answer.push(x.val)
    in_order(x.right) if x.right
end
