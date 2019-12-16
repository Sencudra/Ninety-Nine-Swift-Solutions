
import NinetyNineSwiftProblems

extension List {

    /// P17 (*) Split a linked list into two parts.
    /// - returns: Returns a tuple with two parts of a linked list splited at index Nth
    /// - author: Vladislav Tarasevich (vlad.tarasevich27@gmail.com)
    /// - complexity: O(n)
    public func split(at index: Int) -> (left: List?, right: List?) {
        var oldHead = self
        let firstElement = List(oldHead.value)
        let headOne = index == 0 ? nil : firstElement
        var headTwo = index == 0 ? firstElement : nil
        var tail = headOne != nil ? headOne : headTwo
        var counter = 0
        
        while let next = oldHead.nextItem {
            counter = counter <= index ? counter + 1 : counter
            
            if counter == index {
                headTwo = List(next.value)
                tail = headTwo
                oldHead = next
                continue
            }

            let newElement = List(next.value)
            tail?.nextItem = newElement
            tail = newElement
            oldHead = next
        }
        return (headOne, headTwo)
    }

}
