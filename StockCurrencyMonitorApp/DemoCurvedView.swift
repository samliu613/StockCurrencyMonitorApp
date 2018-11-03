//
//  DemoCurvedView.swift
//  StockCurrencyMonitorApp
//
//  Created by Yongsen on 2018/10/21.
//  Copyright © 2018 SAMDev. All rights reserved.
//

import UIKit

class DemoCurvedView: UIView {

    override func draw(_ rect: CGRect) {
        let myBezier = UIBezierPath()
        myBezier.move(to: CGPoint(x: 0, y: 20))
        myBezier.addLine(to: CGPoint(x: 20, y: 20))
        myBezier.addLine(to: CGPoint(x: 30, y: 20))
        myBezier.addLine(to: CGPoint(x: 40, y: 300))
        myBezier.addLine(to: CGPoint(x: 20, y: 0))
        myBezier.close()
        
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(6.0)
        UIColor.yellow.setFill()
        myBezier.fill()
    }
}
