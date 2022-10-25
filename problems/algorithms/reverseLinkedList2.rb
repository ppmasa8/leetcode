# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
    stack = []
    head_pointer = head
    tail_pointer = head
    count = 1
    
    while count < left
        count += 1
        stack << head_pointer.val
        head_pointer = head_pointer.next
    end
    
    tail_pointer = head_pointer
    
    while count <= right
        count += 1
        stack << tail_pointer.val
        tail_pointer = tail_pointer.next
    end
    
    while left <= right
        left += 1
        head_pointer.val = stack.pop
        head_pointer = head_pointer.next
    end
    
    head
end
