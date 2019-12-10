
import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P06 (*) Find out whether a linked list is a palindrome.
    /// - returns: True if linked list is a palidrome else false
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func isPalindrome() -> Bool {
        let len = self.length

        for i in 0...(len / 2) {

            if self[i] != self[len - i - 1] {
                return false
            }

        }
        return true
    }
    
}
