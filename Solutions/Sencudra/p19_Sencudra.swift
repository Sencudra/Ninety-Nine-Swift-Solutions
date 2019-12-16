
import NinetyNineSwiftProblems

extension List {

    /// P19 (**) Rotate a list N places to the left.
    /// - returns: Returns a rotated list copy N places to the left.
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func rotate(amount: Int) -> List {
        let length = self.length
        let index = amount < 0 ? length - abs(amount) : amount % length
        let (headOne, headTwo) = self.split(at: index)
        
        if let headTwo = headTwo {
            headTwo.lastElement.nextItem = headOne
            return headTwo
        } else {
            return headOne!
        }
        
    }

}
