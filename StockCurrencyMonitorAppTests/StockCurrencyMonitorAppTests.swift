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
    let sut = MonitorViewController()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    /*func test_shouldDataLoadedFromAPI() {
        let expectation = XCTestExpectation(description: "XXX")
        
        
        wait(for: [expectation], timeout: 10.0)
        expectation.fulfill()
        XCTAssertNotNil(sut.currencyDataObj,"No data loaded.")

    }*/
    
    func test_currencyDataShouldBeLoadIfAvaillable () {
        // Create an expectation for an url task
        let expectation = XCTestExpectation(description: "Fetch JSON data through API.")
        guard let url = URL(string: "https://api.exchangeratesapi.io/latest?base=USD") else {
            print("URL is not reachable!")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            XCTAssertNotNil(data)
            expectation.fulfill()
        }
        task.resume()
        wait(for: [expectation], timeout: 3.0)
    }
    
    func test_stockDataShouldBeLoadIfAvaillable () {
        // Create an expectation for an url task
        let expectation = XCTestExpectation(description: "Fetch JSON data through API.")
        guard let url = URL(string: "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=AMZN&apikey=demo") else {
            print("URL is not reachable!")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            XCTAssertNotNil(data)
            expectation.fulfill()
        }
        task.resume()
        wait(for: [expectation], timeout: 3.0)
    }
    
    func test_shouldStockDataReadyForLabelDisplay() {
        
    }
    
    func test_should
    
}


