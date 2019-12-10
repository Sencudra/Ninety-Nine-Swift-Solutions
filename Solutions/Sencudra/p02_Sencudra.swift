
import NinetyNineSwiftProblems

extension List {

    /// P02 (*) Find the last but one element of a linked list.
    /// - returns: T last but one element of the linked list
    /// - author: Vlad Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public var penultimate: T? {
        guard let _ = nextItem else {
            return nil
        }
        return nextItem?.penultimate ?? value
    }

}
