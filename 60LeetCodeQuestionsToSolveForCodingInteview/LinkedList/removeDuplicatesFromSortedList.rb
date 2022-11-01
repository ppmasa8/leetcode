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
def delete_duplicates(head)
    return head if !head || !head.next
    ptr = head
    while ptr.next
        if ptr.val == ptr.next.val
            ptr.next = ptr.next.next
        else
            ptr = ptr.next
        end
    end
    return head
end
