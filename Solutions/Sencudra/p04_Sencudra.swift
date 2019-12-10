
import NinetyNineSwiftProblems

extension List {

    /// P04 (*) Find the number of elements of a linked list.
    /// - returns: Number of elements of a linked list.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    var length: Int {
        return (nextItem?.length ?? 0) + 1
    }
    
}
