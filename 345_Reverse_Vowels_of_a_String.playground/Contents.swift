
class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels = Set("aeiouAEIOU")
        var i = 0
        var j = s.count-1
        var array = Array(s)
        while i < j {
            while i < j && !vowels.contains(String(array[i])) {
                i+=1
            }
            while i < j && !vowels.contains(String(array[j])) {
                j-=1
            }
            let temp = array[i]
            array[i] = array[j]
            array[j] = temp
            i+=1
            j-=1
        }
        return String(array)
    }
}

//Test case #1
//let s = "hello"
//let expected = "holle"

//Test case #2
let s = "leetcode"
let expected = "leotcede"


let result = Solution().reverseVowels(s)
print(result == expected ? "Pass" : "Fail")

