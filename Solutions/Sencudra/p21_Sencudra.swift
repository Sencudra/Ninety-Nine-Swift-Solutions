
import NinetyNineSwiftProblems

extension List {

    /// P21 (*) Insert an element at a given position into a linked list.
    /// - returns: Retunes a copied linked list with an element inserted at the position Kth
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func insert(at index: Int, value: T) -> List {
        var oldHead = self
        var head: List
        var tail: List

        if index == 0 {
            head = List(value)
            tail = head
            tail.nextItem = List(oldHead.value)
            tail = tail.nextItem!
        } else {
            head = List(oldHead.value)
            tail = head
        }
        
        var counter = 1
        while let next = oldHead.nextItem {
            if counter == index {
                tail.nextItem = List(value)
                tail = tail.nextItem!
                counter += 1
            }
            tail.nextItem = List(next.value)
            tail = tail.nextItem!
            oldHead = next
            counter += 1
        }
        
        if counter <= index { tail.nextItem = List(value) }
        return head
    }
    
}
