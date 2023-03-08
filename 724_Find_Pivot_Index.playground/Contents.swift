import UIKit

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        let totalSum = nums.reduce(0, { $0 + $1 })
        var leftSum = 0
        for i in 0..<nums.count {
            let rightSum = totalSum - leftSum - nums[i]
            if leftSum == rightSum {
                return i
            }
            leftSum += nums[i]
        }
        return -1
    }
}

//Test case #1
let expected = 3
let nums = [1,7,3,6,5,6]

//Test case #2
//let expected = -1
//let nums = [1,2,3]

//Test case #3
//let expected = 0
//let nums = [2,1,-1]

let result = Solution().pivotIndex(nums)
print(result == expected ? "Pass" : "Fail")
