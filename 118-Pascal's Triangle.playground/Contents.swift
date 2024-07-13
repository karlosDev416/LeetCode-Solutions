import UIKit

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var res = [[1]]
        for i in 0..<numRows-1 {
            let temp = [0] + res[i] + [0]
            var row: [Int] = []
            let length = res[i].count
            for j in 0...length {
                row.append(temp[j] + temp[j+1])
            }
            res.append(row)
        }
        return res
    }
}

// Example #1
let numRows = 5
let solution = Solution().generate(numRows)
let expected = [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]

print(expected == solution)

