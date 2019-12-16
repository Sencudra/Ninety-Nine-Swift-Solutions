
import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P08 (**) Eliminate consecutive duplicates of linked list elements.
    /// - returns: Returns a copy of a list without duplicates.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func compress() -> List {
        let head = List(value)
        var tail = head
        var oldHead = self
        
        while let next = oldHead.nextItem {
            if next.value != oldHead.value {
                let newElement = List(next.value)
                tail.nextItem = newElement
                tail = newElement
            }
            oldHead = next
        }
        return head
    }
    
}
