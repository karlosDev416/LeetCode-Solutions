import UIKit


//Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil {
            return false
        } else if root?.left == nil && root?.right == nil && (targetSum - (root?.val ?? 0) == 0) {
            return true
        } else {
            return hasPathSum(root?.left, targetSum - (root?.val ?? 0)) || hasPathSum(root?.right, targetSum - (root?.val ?? 0))
        }
    }
}

//Test case
//           5
//       4       8
//    11      13   4
//  7    2           1
//Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
//Output: true
//Explanation: The root-to-leaf path with the target sum is shown.
let nodeLeft1 = TreeNode(4, TreeNode(11, TreeNode(7, nil, nil), TreeNode(2, nil, nil)), nil)
let nodeRight1 = TreeNode(8, TreeNode(13, nil, nil), TreeNode(4, nil, TreeNode(1, nil, nil)))
let root = TreeNode(5, nodeLeft1, nodeRight1)

let result = Solution().hasPathSum(root, 22)

print(result == true ? "Pass" : "Fail")
