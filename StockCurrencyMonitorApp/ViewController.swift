//
//  ViewController.swift
//  StockCurrencyMonitorApp
//
//  Created by Yongsen on 2018/10/21.
//  Copyright © 2018 SAMDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var parsedData = [Any]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        parser()
    }
    
    //Get JSON from API and parse it.
    func parser() {
        guard let url = URL(string: "https://api.exchangeratesapi.io/latest?base=USD") else {return}
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataResponse = data,
                error == nil else {
                    print(error?.localizedDescription ?? "Response Error")
                    return }
            do{
                //here dataResponse received from a network request
                let jsonResponse = try JSONSerialization.jsonObject(with:
                    dataResponse, options: [])
                print(jsonResponse) //Response result
                self.parsedData = [jsonResponse]
            } catch let parsingError {
                print("Error", parsingError)
            }
        }
        task.resume()
    }


}

