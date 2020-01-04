
import NinetyNineSwiftProblems

extension List {

    // MARK: - Public methods

    /// P26b (*) Generate the permutations of k distinct objects chosen from the N elements of a linked list.
    /// - returns: Returns list of permutations. P(n, k), where k is taking
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n^2)
    public func permutations(group: Int) -> List<List<T>>? {
        return permutationsWithoutRepetition(self, taking: group)
    }

    /// - returns: Returns list of permutations. P(n, k), where k is taking
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n^2)
    func permutationsWithoutRepetition(_ elements: List, taking: Int) -> List<List<T>>? {
        guard elements.length >= taking else { return nil }
        guard elements.length > 0 && taking > 0 else { return nil }

        // O(n)
        if taking == 1 { return elements.packValuesInSublists() }

        let listLength = self.length
        var allCombinations: List<List>? = nil

        for index in 0..<listLength {
            let (list, removedValue) = elements.remove(at: index)
            guard let element = removedValue,
                  let reducedList = list,
                  let sublistValues = permutationsWithoutRepetition(reducedList, taking: taking - 1) else {
                    continue
            }
            let newCombination = List.insertToSublist(List(element), to: sublistValues)
            if let _ = allCombinations {
                allCombinations = allCombinations! + newCombination
            } else {
                allCombinations = newCombination
            }

        }
        return allCombinations
    }

}
