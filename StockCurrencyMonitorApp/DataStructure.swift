//
//  DataStructure.swift
//  StockCurrencyMonitorApp
//
//  Created by Yongsen on 2018/10/23.
//  Copyright © 2018 SAMDev. All rights reserved.
//

import Foundation

struct CurrencyData: Codable{
    let date: String
    let rates: Dictionary<String, Double>
    let base: String
}

//struct StockData: Codable {
//    let MetaData: Dictionary<String, String>
//    let 
//    let TimeSeries: Dictionary<String, Dictionary>
//    
//}



