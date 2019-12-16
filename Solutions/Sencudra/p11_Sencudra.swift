
import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P11 (*) Modified run-length encoding.
    /// - returns: Returns modified run-length encoded list where only elements with duplicates are transferred as (N, E) terms.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func encodeModified() -> List<Any> {
        var oldHead = self.encode()
        let (num, val) = oldHead.value
        let head: List<Any> = num == 1 ? List<Any>(val) : List<Any>(oldHead.value)
        var tail = head
        
        while let next = oldHead.nextItem {
            let (num, val) = next.value
            let newElement = num == 1 ? List<Any>(val) : List<Any>(next.value)
            tail.nextItem = newElement
            tail = newElement
            oldHead = next
        }
        return head
    }

}
