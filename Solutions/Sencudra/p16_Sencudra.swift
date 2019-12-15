

import NinetyNineSwiftProblems

extension List {

    /// P16 (**) Drop every Nth element from a linked list.
    /// - returns: Returns copy of linked list with evey Nth element droped.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    func drop(every: Int) -> List? {
        if every <= 1 { return nil }
        
        var oldHead = self
        let head = List(oldHead.value)
        var tail = head
        var counter = 1
        
        while let next = oldHead.nextItem {
            counter += 1
            if every != counter {
                let newElement = List(next.value)
                tail.nextItem = newElement
                tail = newElement
            } else {
                counter = 0
            }
            oldHead = next
        }
        return head
    }

}
