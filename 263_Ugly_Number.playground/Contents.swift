import UIKit

class Solution {
    func isUgly(_ n: Int) -> Bool {
        if n <= 0 { return false }
        var input = n
        for factor in [2,3,5] {
            while input%factor == 0 {
                input/=factor
            }
        }
        return input == 1
    }
}

//Test case #1
let n = 6
let output = true

//Test case #2
//let n = 1
//let output = true

//Test case #3
//let n = 14
//let output = false


let solution = Solution()
let result = solution.isUgly(n)

print(result == output ? "Pass" : "Fail")
