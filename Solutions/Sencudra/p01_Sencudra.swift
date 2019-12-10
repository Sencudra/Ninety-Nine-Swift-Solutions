
import NinetyNineSwiftProblems

extension List {

    /// P01 (*) Find the last element of a linked list.
    /// - returns: T last element of the linked list
    /// - author: Vlad Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public var last: T? {
        return nextItem?.last ?? value
    }

}
