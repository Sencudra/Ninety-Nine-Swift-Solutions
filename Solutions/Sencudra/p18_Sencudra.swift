
import NinetyNineSwiftProblems

extension List {

    /// P18 (**) Extract a slice from a linked list.
    /// - returns: Returns the slice from a linked list.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func slice(from start: Int, to end: Int) -> List? {
        guard start < end else { return nil }
        var oldHead = self
        var counter = 0
        
        while let next = oldHead.nextItem, counter < start {
            counter += 1
            oldHead = next
        }
        
        guard counter == start else { return nil }
        let head = List(oldHead.value)
        var tail = head
        counter += 1
        
        while let next = oldHead.nextItem, counter < end {
            let newElement = List(next.value)
            tail.nextItem = newElement
            tail = newElement
            oldHead = next
            counter += 1
        }
        return head
    }

}
	
