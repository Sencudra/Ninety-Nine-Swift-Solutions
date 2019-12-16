
import NinetyNineSwiftProblems

extension List {

    /// P25 (*) Generate a random permutation of the elements of a linked list.
    /// - returns: Returns a random permutation of the elements of a linked list.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n^2)
    public func randomPermute() -> List {
        return randomSelect(amount: length)
    }    

}
