
import NinetyNineSwiftProblems

extension List {

    // NARK: - Public methods

    /// - returns: Returns the copy of a linked list.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func copy() -> List<T> {
        var oldHead = self
        let head = List(oldHead.value)
        var tail = head
        
        while let next = oldHead.nextItem {
            let newElement = List(next.value)
            tail.nextItem = newElement
            tail = newElement
            oldHead = next
        }
        return head
    }

    /// - returns: Returns the copy of concatenated lists List<T>
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public static func +(lhs: List<T>, rhs: List<T>) -> List<T> {
        let head = lhs.copy()
        let tail = head.lastElement
        tail.nextItem = rhs.copy()
        return head
    }

    /// - returns: Returns the copy of concatenated lists List<List<T>>
    /// - complexity: O(n)
    public static func +(lhs: List<List<T>>, rhs: List<List<T>>) -> List<List<T>> {
        let head = specialCopy(lhs)
        let tail = head.lastElement
        tail.nextItem = specialCopy(rhs)
        return head
    }

    /// - returns: Returns the copy of list List<List<T>> with inserted values at each of sublists.
    /// - complexity: O(n)
    public  static func insertToSublist(_ element: List, to list: List<List<T>>) -> List<List<T>> {
        var oldHead = list
        let head = List<List>(element + oldHead.value)
        var tail = head

        while let next = oldHead.nextItem {
            tail.nextItem = List<List>(element + next.value)
            tail = tail.nextItem!
            oldHead = next
        }
        return head
    }

    /// - returns: Returns the copy of a list List<List<T>>.
    /// - complexity: O(n)
    public static func specialCopy(_ list: List<List<T>>) -> List<List<T>> {
        var oldHead = list
        let head = List<List>(oldHead.value.copy())
        var tail = head

        while let next = oldHead.nextItem {
            let newElement = List<List>(next.value.copy())
            tail.nextItem = newElement
            tail = newElement
            oldHead = next
        }
        return head
    }

    /// - returns: Returns List<List<T>> - the copy of a packed list List<T>.
    /// - complexity: O(n)
    public func packValuesInSublists() -> List<List<T>> {
        var oldHead = self
        let head = List<List>(List(oldHead.value))
        var tail = head
        while let next = oldHead.nextItem {
            let newElement = List<List>(List(next.value))
            tail.nextItem = newElement
            tail = newElement
            oldHead = next
        }
        return head
    }
    
}
