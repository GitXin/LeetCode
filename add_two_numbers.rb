# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  l3 = ListNode.new(nil)
  list3 = l3
  carry = false
  list1 = l1
  list2 = l2

  while true
    val = list1.val + list2.val
    if carry
      val += 1
      carry = false
    end
    list3.val = if val >= 10
      carry = true
      val - 10
    else
      val
    end
    list1 = list1.next
    list2 = list2.next
    break if list1.nil? || list2.nil?
    list3_next = ListNode.new(nil)
    list3.next = list3_next
    list3 = list3.next
  end

  remain = list1 || list2

  while remain != nil
    list3_next = ListNode.new(nil)
    list3.next = list3_next
    list3 = list3.next

    val = remain.val
    if carry
      val += 1
      carry = false
    end
    list3.val = if val == 10
      carry = true
      0
    else
      val
    end
    remain = remain.next
  end

  if carry
    list3_next = ListNode.new(1)
    list3.next = list3_next
    list3 = list3.next
  end

  l3
end