
import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P10 (*) Run-length encoding of a linked list.
    /// - returns: Duplicates of elements are encoded as tuples (N, E) where N is the number of duplicates of the element E.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    func encode() -> List<(Int, T)> {
        var oldHead = self.pack()
        let head = List<(Int, T)>((oldHead.value.length,
                                   oldHead.value.value))
        var tail = head
        
        while let next = oldHead.nextItem {
            let newElement = List<(Int, T)>((next.value.length,
                                             next.value.value))
            tail.nextItem = newElement
            tail = newElement
            oldHead = next
        }
        return head
    }
    
}
