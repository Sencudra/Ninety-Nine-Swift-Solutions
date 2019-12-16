
import NinetyNineSwiftProblems

extension List {

    /// P20 (*) Remove the Kth element from a linked list.
    /// - returns: Returns the tuple with copy of linked list without Kth element and Kth element
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func remove(at index: Int) -> (rest: List?, removed: T?) {
        var oldHead = self
        var dropValue: T? = nil
        var head: List
        
        if index == 0 {
            guard let next = oldHead.nextItem else {
                return (nil, oldHead.value)
            }
            dropValue = oldHead.value
            oldHead = next
            head = List(oldHead.value)
        } else {
            head = List(oldHead.value)
        }
        var tail = head
        var counter = 0
        
        while let next = oldHead.nextItem {
            counter += 1
            if index == counter {
                dropValue = next.value
            } else {
                let newElement = List(next.value)
                tail.nextItem = newElement
                tail = newElement
            }
            oldHead = next
        }
        return (head, dropValue)
    }

}
