import UIKit

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result = nums
        for x in 0..<nums.count-1 {
            result[x+1] = result[x] + result[x+1]
        }
        return result
    }
}
let nums = [1,2,3,4]
let expected = [1,3,6,10]
let result = Solution().runningSum(nums)
print(result == expected ? "Pass" : "Fail")
