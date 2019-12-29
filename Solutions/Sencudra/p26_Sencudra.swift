
import NinetyNineSwiftProblems

extension List {

    /// P26 (*) Generate all possible combinations of a list taking N elemens without repetitions.
    /// - returns: Returns list combinations without repetitions. C(n, r), where r is taking
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n^2)
    func combinations(group: Int) -> List<List<T>>? {
        return combinationsWithoutRepetition(self, taking: group)
    }
    
    /// - returns: Returns list combinations without repetitions. C(n, r), where r is taking
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n^2)
    func combinationsWithoutRepetition(_ elements: List, taking: Int) -> List<List<T>>? {
        guard elements.length >= taking else { return nil }
        guard elements.length > 0 && taking > 0 else { return nil }

        // O(n)
        if taking == 1 { return elements.packValuesInSublists() }

        let listLength = self.length
        var allCombinations: List<List>? = nil

        var counter = 0
        var listOfRemainElements = elements
        while counter < listLength {
            let (list, removedValue) = listOfRemainElements.remove(at: 0)
            guard let element = removedValue,
                  let reducedList = list,
                  let sublistValues = combinationsWithoutRepetition(reducedList, taking: taking - 1) else {
                    counter += 1
                    continue
            }
            let newCombination = List.insertToSublist(List(element), to: sublistValues)
            if let _ = allCombinations {
                allCombinations = allCombinations! + newCombination
            } else {
                allCombinations = newCombination
            }
            listOfRemainElements = reducedList
            counter += 1
        }
        return allCombinations
    }

}

// Special extension

extension List {

    // MARK: - Static methods

    /// - returns: Returns the copy of concatenated lists List<List<T>>
    /// - complexity: O(n)
    static func +(lhs: List<List<T>>, rhs: List<List<T>>) -> List<List<T>> {
        let head = specialCopy(lhs)
        let tail = head.lastElement
        tail.nextItem = specialCopy(rhs)
        return head
    }

    /// - returns: Returns the copy of a list List<List<T>>.
    /// - complexity: O(n)
    static func specialCopy(_ list: List<List<T>>) -> List<List<T>> {
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
    func packValuesInSublists() -> List<List<T>> {
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

    /// - returns: Returns the copy of list List<List<T>> with inserted values at each of sublists.
    /// - complexity: O(n)
    static func insertToSublist(_ element: List, to list: List<List<T>>) -> List<List<T>> {
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

}
