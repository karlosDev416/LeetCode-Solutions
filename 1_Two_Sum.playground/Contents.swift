
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var index = 0
        var dict:[Int:Int] = [:]
        for item in nums {
            let difference = target - nums[index]
            if dict[difference] == nil {
                dict[item] = index
            } else if let value = dict[difference] {
                return [value, index]
            }
            index+=1
        }
        return []
    }
}

//Test case #1
let nums = [2,7,11,15]
let target = 9
let output = [0,1]

//Test case #2
//let nums = [3,2,4]
//let target = 6
//let output = [1,2]


let solution = Solution()
let result = solution.twoSum(nums, target)
print(output == result ? "Pass" : "Fail")
    
