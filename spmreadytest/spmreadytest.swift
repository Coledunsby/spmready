//
//  spmreadytest.swift
//  spmreadytest
//
//  Created by Sebastian Humann on 13.09.19.
//  Copyright © 2019 Sebastian Humann. All rights reserved.
//

import XCTest


class spmreadytest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSingleQuotePod() {
        let name = "  pod 'Name', '~> 16.0.1'".match(.pod)
        XCTAssertEqual(name, "Name")
    }

    func testDoubleQuotePod() {
        let name = #"  pod "Name", "~> 16.0.1""#.match(.pod)
        XCTAssertEqual(name, "Name")
    }

    func testPodParseSafe() {
        let name = #"  ajshgdjsad"#.match(.pod)
        XCTAssertEqual(name, nil)
    }

    func testCartParseSafe() {
           let name = #"         github "ReactiveCocoa/ReactiveCocoa""#.match(.cart)
           XCTAssertEqual(name, nil)
    }



}
