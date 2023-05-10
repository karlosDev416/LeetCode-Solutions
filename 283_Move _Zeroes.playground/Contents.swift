
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var l = 0
        let length = nums.count
        for r in 0..<length {
            if nums[r] != 0 {
                nums.swapAt(l, r)
                l+=1
            }
        }
    }
}

//Test case #1
var nums = [0,1,0,3,12]
let expected = [1,3,12,0,0]

//Test case #2
//var nums = [0]
//let expected = [0]

Solution().moveZeroes(&nums)
print(nums == expected ? "Pass" : "Fail")
