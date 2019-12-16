
import NinetyNineSwiftProblems

extension List {

    /// P24 (*) Lotto: Draw N different random numbers from the set 1..M.
    /// - returns: Returns N different random numbers from the set 1...M
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n*m)
    public class func lotto(numbers: Int, maximum: Int) -> List<Int> {
        let rangeList = List<Int>.range(from: 1, to: maximum)
        return rangeList.randomSelect(amount: numbers)
    }

}
