
import NinetyNineSwiftProblems

extension List {

    /// P23 (**) Extract a given number of randomly selected elements from a linked list.
    /// - returns: Returns the list without N randomly selected elements.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n*m)
    func randomSelect(amount: Int) -> List {
        let index = Int.random(in: 0..<self.length)
        let (newHead, value) = self.remove(at: index)
        let head = List(value!)
        var tail = head
        var oldHead = newHead
       
        for _ in 0..<(amount - 1) {
            guard let unwrappedHead = oldHead else { break }
            let index = Int.random(in: 0..<unwrappedHead.length)
            let (newHead, value) = unwrappedHead.remove(at: index)
            oldHead = newHead
            tail.nextItem = List(value!)
            tail = tail.nextItem!
        }
        return head
    }

}
