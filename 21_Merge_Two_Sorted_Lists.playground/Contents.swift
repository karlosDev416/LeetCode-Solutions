import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy = ListNode(-1)
        var last = dummy
        var l1 = list1
        var l2 = list2
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                last.next  = l1
                last = l1!
                l1 = l1!.next
            } else {
                last.next  = l2
                last = l2!
                l2 = l2!.next
            }
        }
        if l1 != nil {
            last.next = l1
        } else if l2 != nil {
            last.next = l2
        }
        return dummy.next
    }
    
    func display(head:ListNode?) -> String {
        if head == nil {
            return ""
        }
        var current = head
        var result = ""
        while current?.next != nil {
            result = result + "\(current!.val)-->"
            current = current?.next
        }
        return result + "\(current!.val)-->" + "null"
    }
}

//Test case #1
let l1 = ListNode(1, ListNode(2, ListNode(4)))
let l2 = ListNode(1, ListNode(3, ListNode(4)))
let solution = Solution()
let result = solution.mergeTwoLists(l1, l2)
let expected = "1-->1-->2-->3-->4-->4-->null"
print(solution.display(head: result) == expected ? "Pass" : "Fail")

