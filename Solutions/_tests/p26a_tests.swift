import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P26A (**) Generate the combinations of K distinct objects chosen from the N elements of a list.
    func testP26A() {

        // Special cases
        assertEquals(List("a").combinations(group: -10), nil)
        assertEquals(List("a").combinations(group: 0), nil)
        assertEquals(List("a").combinations(group: 3), nil)

        // Main
        assertEquals(List(1, 2, 3).combinations(group: 3)?.description,
                     List(List(1, 2, 3)).description)
        assertEquals(List(1, 2, 3).combinations(group: 2)?.description,
                     List(List(1, 2), List(1, 3), List(2, 3)).description)
        assertEquals(List(1, 2, 3).combinations(group: 1)?.description,
                     List(List(1), List(2), List(3)).description)
        assertEquals(List(1).combinations(group: 1)?.description,
                     List(List(1)).description)
        assertEquals(List(1, 2, 3, 4, 5).combinations(group: 3)?.description,
                     List(List(1, 2, 3),
                          List(1, 2, 4),
                          List(1, 2, 5),
                          List(1, 3, 4),
                          List(1, 3, 5),
                          List(1, 4, 5),
                          List(2, 3, 4),
                          List(2, 3, 5),
                          List(2, 4, 5),
                          List(3, 4, 5)).description)

        // Length
        assertEquals(List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12).combinations(group: 3)?.length,
                     220)
        assertEquals(List("a", "b", "c", "d", "e", "f").combinations(group: 3)?.length,
                     20)
        assertEquals(List(1, 1, 2, 3, 5, 8).combinations(group: 3)?.length,
                     20)
        assertEquals(List("a", "b", "c").combinations(group: 2)?.length,
                     3)
        assertEquals(List("a", "b", "c").combinations(group: 3)?.length,
                     1)
        assertEquals(List("a", "b", "c").combinations(group: 1)?.length,
                     3)
    }

}
