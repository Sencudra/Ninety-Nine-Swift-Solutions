
import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P13 (**) Run-length encoding of a linked list (direct solution).
    /// - returns: Returns modified run-length encoded list where only elements with duplicates are transferred as (N, E) terms.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    func encodeDirect() -> List<(Int, T)> {
        var oldHead = self
        let head = List<(Int, T)>((1, oldHead.value))
        var tail = head
        
        while let next = oldHead.nextItem {
                        
            if next.value == oldHead.value {
                let (count, element) = tail.value
                tail.value = (count + 1, element)
            } else {
                let newElement = List<(Int, T)>((1, next.value))
                tail.nextItem = newElement
                tail = newElement
            }
            oldHead = next
        }
        return head
    }

}
