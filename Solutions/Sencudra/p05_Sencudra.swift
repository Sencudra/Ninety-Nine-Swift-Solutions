
import NinetyNineSwiftProblems

extension List {

    /// P05 (*) Reverse a linked list.
    /// - returns: Copy of reversed linked list
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func reverse() -> List {
        var newHead = List(value)
        var oldHead: List = self
        
        while oldHead.nextItem != nil {
            oldHead = oldHead.nextItem!
            let newElement = List(oldHead.value)
            newElement.nextItem = newHead
            newHead = newElement
        }
        return newHead
    }

}
