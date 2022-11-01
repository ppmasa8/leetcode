# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
    return nil if !head
    slow, fast = head, head
    while fast && fast.next
        slow = slow.next
        fast = fast.next.next
        break if slow == fast
    end

    return nil if !fast || !fast.next || !slow

    slow = head
    while slow != fast
        slow = slow.next
        fast = fast.next
    end
    return slow
end
