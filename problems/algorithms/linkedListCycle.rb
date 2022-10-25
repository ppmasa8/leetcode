# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    if head.nil? || head.next.nil?
        return false
    end
    
    fast = head
    slow = head
    
    while fast && fast.next
        slow = slow.next
        fast = fast.next.next
        if fast == slow
            return true
        end
    end
    return false
end
