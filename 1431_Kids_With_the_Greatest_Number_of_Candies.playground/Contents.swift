
class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maximum = candies.max() ?? 0
        return candies.map { $0 + extraCandies >= maximum }
    }
}

//Test case #1
let candies = [2,3,5,1,3], extraCandies = 3
let expected = [true, true, true, false, true]

//Test case #2
//let candies = [4,2,1,1,2], extraCandies = 1
//let expected = [true,false,false,false,false]

//Test case #3
//let candies = [12,1,12], extraCandies = 10
//let expected = [true,false,true]

let result = Solution().kidsWithCandies(candies, extraCandies)
print(result == expected ? "Pass" : "Fail")
