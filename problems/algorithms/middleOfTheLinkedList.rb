# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    fast, slow = head, head
    while fast && fast.next
        fast = fast.next.next
        slow = slow.next
    end
    slow
end
