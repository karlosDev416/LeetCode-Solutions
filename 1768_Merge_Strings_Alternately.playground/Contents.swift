
class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var i = 0, j = 0
        var result:[String] = []
        while i < word1.count && j < word2.count {
            guard let string1 = substring(word1, from:i, to:i+1) else { break }
            result.append(string1)
            guard let string2 = substring(word2, from:i, to:i+1) else { break }
            result.append(string2)
            i+=1
            j+=1
        }
        if let word1Remaining = substring(word1, from: i, to: word1.count) {
            result.append(word1Remaining)
        }
        if let word2Remaining = substring(word2, from: j, to: word2.count) {
            result.append(word2Remaining)
        }
        return result.joined()
    }
    
    func substring(_ str: String, from start: Int, to end: Int) -> String? {
        guard start >= 0, start <= end, end <= str.count else {
            return nil
        }
        let startIndex = str.index(str.startIndex, offsetBy: start)
        let endIndex = str.index(str.startIndex, offsetBy: end)
        return String(str[startIndex..<endIndex])
    }
}

//Test case #1
//let word1 = "abc", word2 = "pqr"
//let expected = "apbqcr"

//Test case #2
//let word1 = "ab", word2 = "pqrs"
//let expected = "apbqrs"

//Test case #3
let word1 = "abcd", word2 = "pq"
let expected = "apbqcd"


let result = Solution().mergeAlternately(word1, word2)
print(result == expected ? "Pass" : "Fail")
