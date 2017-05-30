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
def delete_duplicates(head)
  return if head.nil?
  last = head

  while last.next != nil
    current = last.next
    if current.val == last.val
      if current.next.nil?
        last.next = nil
        break
      else
        last.next = current.next
        current.next = nil
        current = nil
      end
    else
      last = last.next
    end
  end

  head
end