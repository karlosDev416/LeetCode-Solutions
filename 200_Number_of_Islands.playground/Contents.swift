import UIKit

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var visited:Set<String> = []
        var count = 0
        for x in 0..<grid.count {
            for y in 0..<grid[x].count {
                if dfs(grid, x, y, &visited) {
                    count+=1
                }
            }
        }        
        return count
    }
    
    func dfs(_ grid: [[Character]],_ x:Int,_ y:Int,_ visited: inout Set<String>) -> Bool {
        guard grid.indices.contains(x),
              grid[x].indices.contains(y),
              grid[x][y] == "1" else {
            return false
        }
        let position = "\(x),\(y)"
        if visited.contains(position) {
            return false
        }
        visited.insert(position)
        dfs(grid, x - 1, y, &visited)
        dfs(grid, x + 1, y, &visited)
        dfs(grid, x, y - 1, &visited)
        dfs(grid, x, y + 1, &visited)
        return true
    }
}

let grid:[[Character]] = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]
let expected = 1
let result = Solution().numIslands(grid)
print(result == expected ? "Pass" : "Fail")

