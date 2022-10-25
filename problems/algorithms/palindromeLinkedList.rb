# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    fast = head
    slow = head

    stack = []

    while fast != nil && fast.next != nil
        stack.push(slow.val)
        slow = slow.next
        fast = fast.next.next
    end

    # when fast pointer element is odd, slow pointer is next.
    if fast != nil
        slow = slow.next
    end

    while slow != nil
        top = stack.pop
        if top != slow.val
            return false
        end
        slow = slow.next
    end
    return true
end
