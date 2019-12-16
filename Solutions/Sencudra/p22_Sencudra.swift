
import NinetyNineSwiftProblems

extension List {

    /// P22 (*) Create a linked list containing all integers within a given range.
    /// - returns: Returns a linked list containing all integers wthin a given range.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public class func range(from start: Int, to end: Int) -> List<Int> {
        let head = List<Int>(start)
        var tail = head
        let _ = ((start + 1)...end).map {
            tail.nextItem = List<Int>($0)
            tail = tail.nextItem!
        }
        return head
    }

}
