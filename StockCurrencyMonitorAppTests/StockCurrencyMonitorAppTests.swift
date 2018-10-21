//
//  StockCurrencyMonitorAppTests.swift
//  StockCurrencyMonitorAppTests
//
//  Created by Yongsen on 2018/10/21.
//  Copyright © 2018 SAMDev. All rights reserved.
//

import XCTest
@testable import StockCurrencyMonitorApp

class StockCurrencyMonitorAppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_API() {
        let vc = ViewController()
        XCTAssertNotNil(vc.parsedData)
    }
    
}

