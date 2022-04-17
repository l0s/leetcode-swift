//
//  copy-list-with-random-pointerTests.swift
//  
//
//  Created by Carlos Macasaet on 15/Apr/2022.
//

import XCTest
@testable import leetcode_swift

class copy_list_with_random_pointerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample2() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let head = Node(1)
        let tail = Node(2)
        head.next = tail
        head.random = tail
        tail.random = tail
        tail.next = nil
        let solution = Solution()
        let copy = solution.copyRandomList(head)
        print(copy.debugDescription)
    }

}
