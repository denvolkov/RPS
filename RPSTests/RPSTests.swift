//
//  RPSTests.swift
//  RPSTests
//
//  Created by test on 11.12.2020.
//

import XCTest
@testable import RPS

class RPSTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRockResult() throws {
        let sign = Sign.rock
        print("hello")
        print(sign.emoji)
        XCTAssert(sign.takeTurn(oposite: .rock) == .draw)
        XCTAssert(sign.takeTurn(oposite: .paper) == .lose)
        XCTAssert(sign.takeTurn(oposite: .scissors) == .win)
    }
    func testPaperResult() throws {
        let sign = Sign.paper
        print("hello")
        print(sign.emoji)
        XCTAssert(sign.takeTurn(oposite: .rock) == .win)
        XCTAssert(sign.takeTurn(oposite: .paper) == .draw)
        XCTAssert(sign.takeTurn(oposite: .scissors) == .lose)
    }
    func testScissorsResult() throws {
        let sign = Sign.scissors
        print("hello")
        print(sign.emoji)
        XCTAssert(sign.takeTurn(oposite: .rock) == .lose)
        XCTAssert(sign.takeTurn(oposite: .paper) == .win)
        XCTAssert(sign.takeTurn(oposite: .scissors) == .draw)
    }
}
