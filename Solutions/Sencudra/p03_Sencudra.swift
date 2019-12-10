
import NinetyNineSwiftProblems

extension List {

    /// P 03 (*) Find the Kth element of a linked list.
    /// - returns: Returns Kth element of linked list or nil if element could not be found
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    subscript(_ index: Int) -> T? {
        return index == 0 ? value : nextItem?[index - 1]
    }

}
