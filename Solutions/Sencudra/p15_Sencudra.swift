
import NinetyNineSwiftProblems

extension List {

    /// P15 (**) Duplicate the elements of a linked list a given number of times.
    /// - returns: Returns the list with a given number of times duplicated values.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func duplicate(times: Int) -> List {
        var oldHead = self
        let head = List(oldHead.value)
        var tail = head
        
        for _ in 0..<(times - 1) {
            let newElement = List(oldHead.value)
            tail.nextItem = newElement
            tail = newElement
        }
                
        while let next = oldHead.nextItem {
            for _ in 0..<times {
                let newElement = List(next.value)
                tail.nextItem = newElement
                tail = newElement
            }
            oldHead = next
        }
        return head
    }

}
