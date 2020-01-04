
import NinetyNineSwiftProblems

extension List {

    // MARK: - Public methods

    /// P26A (*) Generate all possible combinations of a list taking N elemens without repetitions.
    /// - returns: Returns list of combinations without repetitions. C(n, r), where r is taking
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n^2)
    public func combinations(group: Int) -> List<List<T>>? {
        return combinationsWithoutRepetition(self, taking: group)
    }

    // MARK: - Private methods
    
    /// - returns: Returns list of combinations without repetitions. C(n, r), where r is taking
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n^2)
    private func combinationsWithoutRepetition(_ elements: List, taking: Int) -> List<List<T>>? {
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
