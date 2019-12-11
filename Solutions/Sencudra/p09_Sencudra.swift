
import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P09 (**) Pack consecutive duplicates of linked list elements into sub linked lists.
    /// - returns: Returns a list with duplicates being placed into sub linked lists.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    func pack() -> List<List<T>> {
        var subTail =  List(value)
        let head = List<List>(subTail)
        var tail = head
        var oldHead = self
            
        while let next = oldHead.nextItem {
            if next.value == oldHead.value {
                let newElement = List(next.value)
                subTail.nextItem = newElement
                subTail = newElement
            } else {
                subTail = List(next.value)
                let newElement = List<List>(subTail)
                tail.nextItem = newElement
                tail = newElement
            }
            oldHead = next
        }
        return head
    }
    
}
