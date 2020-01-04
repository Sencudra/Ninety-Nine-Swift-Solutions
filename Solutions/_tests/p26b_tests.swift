import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P26B (**) Generate the permutations of K distinct objects chosen from the N elements of a list.
    func testP26B() {

        // Special cases
        assertEquals(List("a").permutations(group: -10), nil)
        assertEquals(List("a").permutations(group: 0), nil)
        assertEquals(List("a").permutations(group: 3), nil)
        assertEquals(List("a").permutations(group: 1)?.description,
                     List(List("a")).description)

        // Main
        assertEquals(List(1, 2, 3).permutations(group: 3)?.description,
                     List(List(1, 2, 3),
                          List(1, 3, 2),
                          List(2, 1, 3),
                          List(2, 3, 1),
                          List(3, 1, 2),
                          List(3, 2, 1)).description)

        // Length
        assertEquals(List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12).permutations(group: 3)?.length,
                     1320)
        assertEquals(List("a", "b", "c", "d", "e", "f").permutations(group: 3)?.length,
                     120)
        assertEquals(List(1, 1, 2, 3, 5, 8).permutations(group: 3)?.length,
                     120)
        assertEquals(List("a", "b", "c").permutations(group: 2)?.length,
                     6)
    }

}
