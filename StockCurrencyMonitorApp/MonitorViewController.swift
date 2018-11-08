//
//  ViewController.swift
//  StockCurrencyMonitorApp
//
//  Created by Yongsen on 2018/10/21.
//  Copyright © 2018 SAMDev. All rights reserved.
//

import UIKit

class MonitorViewController: UIViewController {
    
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var stockLabel: UILabel!
    
    var currencyDataObj: CurrencyData?
    var stockDataObj: StockData?
    //var stockDataObj: StockData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currencyGetter()
        currencyLabel.text = nowCurrencyForLabel()
        
        stockGetter()
        stockLabel.text = nowStockForLabel()
    }
    
    func nowCurrencyForLabel() -> String {
        return "\(currencyDataObj?.rates["SEK"] ?? 0.0)"
    }
    
    func nowStockForLabel() -> String {
        
        return "PLACEHOLDER"
    }
    
    //Get json data through API
    func currencyGetter() {
        guard let url = URL(string: "https://api.exchangeratesapi.io/latest?base=USD") else {
            print("URL is not reachable!")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataResponse = data, error == nil else {
                print(error?.localizedDescription ?? "Response Error.")
                return
            }
            do {
                let decoder = JSONDecoder()
                self.currencyDataObj = try decoder.decode(CurrencyData.self, from: dataResponse)
            } catch let error {
                print("Error", error)
            }
        }
        task.resume()
    }
    
    func stockGetter() {
        guard let url = URL(string: "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=AMZN&apikey=demo") else {
            print("URL is not reachable!")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataResponse = data, error == nil else {
                print(error?.localizedDescription ?? "Response Error.")
                return
            }
            do {
                let decoder = JSONDecoder()
                self.stockDataObj = try decoder.decode(StockData.self, from: dataResponse)
            } catch let error {
                print("Error", error)
            }
        }
        task.resume()
    }
    
    // UPdate
    @IBAction func update(_ sender: Any) {

        currencyGetter()
        currencyLabel.text = "\(currencyDataObj?.rates["SEK"] ?? 0.0)"
    }
    
    
}

