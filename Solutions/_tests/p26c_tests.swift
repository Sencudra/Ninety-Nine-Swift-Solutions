
import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P26c (*) Generate a copy of a list.
    func testP26C() {
        Test("Generate a copy of a list") {

            // Copy
            let l1 = List("a", "b", "c", "d", "e", "f")
            let l2 = l1.copy()
            assertEquals(l1.description, l2.description)

            let l3 = List(1, 2, 2, 3)
            let l4 = l3.copy()
            assertEquals(l3.description, l4.description)

            // Concatenation
            let result1 = List(List(1, 2)) + List(List(2), List(3))
            assertEquals(result1.description, List(List(1, 2), List(2), List(3)).description)
            
            let result2 = List(List(1), List(2, 3)) + List(List(3))
            assertEquals(result2.description, List(List(1), List(2, 3), List(3)).description)
            
            let result3 = List(List(1)) + List(List(4))
            assertEquals(result3.description, List(List(1), List(4)).description)

            // Packing values
            let result5 = List(1).packValuesInSublists()
            assertEquals(result5.description, List(List(1)).description)

            let result6 = List(1, 2, 3).packValuesInSublists()
            assertEquals(result6.description,
                         List(List(1), List(2), List(3)).description)


            // Inserting values in sublists
            let result7 = List.insertToSublist(List(0), to: List(List(1)))
            assertEquals(result7.description, List(List(0, 1)).description)

            let result8 = List.insertToSublist(List(0), to: List(List(1, 2), List(3, 4)))
            assertEquals(result8.description, List(List(0, 1, 2), List(0, 3, 4)).description)
        }
        
    }

}
