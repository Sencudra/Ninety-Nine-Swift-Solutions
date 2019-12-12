
import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P14 (*) Duplicate the elements of a linked list.
    /// - returns: Returns the list with duplicated values
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    func duplicate() -> List {
        var oldHead = self
        let head = List(oldHead.value)
        let newElement = List(oldHead.value)
        head.nextItem = newElement
        var tail = newElement
        
        while let next = oldHead.nextItem {
            
            for _ in 0...1 {
                let newElement = List(next.value)
                tail.nextItem = newElement
                tail = newElement
            }
            oldHead = next
        }
        return head
    }
    
}
