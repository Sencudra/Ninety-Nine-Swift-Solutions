
import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P14 (*) Duplicate the elements of a linked list.
    /// - returns: Returns the list with duplicated values
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    func duplicate() -> List {
        var oldHead = self
        let newElement = List(oldHead.value)
        let head = List(oldHead.value)
        let newElement = List(oldHead.value)
        head.nextItem = newElement
        var tail = newElement
        
        while let next = oldHead.nextItem {
            var
            tail.nextItem = List(next.value)
            
            
            
        }
        
    }
    
}
