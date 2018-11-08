//
//  DataStructure.swift
//  StockCurrencyMonitorApp
//
//  Created by Yongsen on 2018/10/23.
//  Copyright © 2018 SAMDev. All rights reserved.
//

import Foundation

// Define structure for currency data
struct CurrencyData: Codable{
    let date: String
    let rates: Dictionary<String, Double>
    let base: String
}

// Define structure for stock data
struct StockData: Codable {
    let MetaData: Dictionary<String, String>
    let TimeSeries: Dictionary<String, Dictionary<String, String>>
    
    enum CodingKeys: String, CodingKey {
        case MetaData = "Meta Data"
        case TimeSeries = "Time Series (Daily)"
    }
}


