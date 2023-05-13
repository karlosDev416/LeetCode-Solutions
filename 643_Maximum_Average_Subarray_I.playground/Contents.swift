class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = nums.prefix(k).reduce(0, +)
        var result = Double(sum) / Double(k)
        for i in k..<nums.count {
            sum = sum - nums[i - k] + nums[i]
            result = max(result, Double(sum) / Double(k))
        }
        return result
    }
}

//Test case #1
let nums = [1,12,-5,-6,50,3], k = 4
let expected = 12.75

let result = Solution().findMaxAverage(nums, k)
print(result == expected ? "Pass" : "Fail")
