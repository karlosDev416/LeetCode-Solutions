
class Solution {
    func isHappy(_ n: Int) -> Bool {
        guard n != 1 && n != 7 else { return true }
        guard n > 9 else { return false }
        let array = String(n).compactMap {Int(String($0))}
        let result = array.map { $0 * $0 }.reduce(0, +)
        guard result == 1 else { return isHappy(result) }
        return true
    }
}

//Test case #1
let number = 19
let output = true

//Test case #2
//let number = 2
//let output = false

let solution = Solution()
let result = solution.isHappy(number)

print(result == output ? "Pass" : "Fail")
