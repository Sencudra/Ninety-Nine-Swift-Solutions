
import NinetyNineSwiftProblems

extension List {

    /// P07 (**) Flatten a nested linked list structure.
    /// - returns: Returnes a flattened copy of nested linked list structure.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    func flatten() -> List {
        var head: List
        var oldHead = self
        var newHead: List
        
        if let value = value as? List {
            head = value.flatten()
        } else {
            head = List(oldHead.value)
        }
        newHead = head.lastElement
        
        while let next = oldHead.nextItem {
            let newElement: List
            if let value = next.value as? List {
                newElement = value.flatten()
            } else {
                newElement = List(next.value)
            }
            newHead.nextItem = newElement
            newHead = newHead.lastElement
            oldHead = oldHead.nextItem!
        }
        return head
    }
    
    var lastElement: List {
        return nextItem?.lastElement ?? self
    }

}
