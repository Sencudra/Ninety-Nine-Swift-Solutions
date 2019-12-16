
import NinetyNineSwiftProblems

extension List {

    /// P12 (**)  Decode a run-length encoded linked list.
    /// - returns: Returns decoded List
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func decode() -> List<String> {
        var oldHead = self
        guard let (count, char) = oldHead.value as? (Int, String) else { return List<String>("") }
        let head = List<String>(char)
        var tail = head
        
        for _ in 1...count - 1 {
            let newElement = List<String>(char)
            tail.nextItem = newElement
            tail = newElement
        }

        while let (count, value) = oldHead.nextItem?.value as? (Int, String) {
            for _ in 0...count - 1 {
                let newElement = List<String>(value)
                tail.nextItem = newElement
                tail = newElement
            }
            oldHead = oldHead.nextItem!
        }
        return head
    }

}
