
import NinetyNineSwiftProblems

extension List {

    /// P26c1 (*) Generate the copy of a list.
    /// - returns: Returns the copy of a linked list.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    func copy() -> List<T> {
        var oldHead = self
        let head = List(oldHead.value)
        var tail = head
        
        while let next = oldHead.nextItem {
            let newElement = List(next.value)
            tail.nextItem = newElement
            tail = newElement
            oldHead = next
        }
        return head
    }

    /// P26c2 (*) Concatenates lists.
    /// - returns: Returns the copy of concatenated lists List<T>
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    static func +(lhs: List<T>, rhs: List<T>) -> List<T> {
        let head = lhs.copy()
        let tail = head.lastElement
        tail.nextItem = rhs.copy()
        return head
    }
    
}
