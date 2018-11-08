//
//  CurvedView.swift
//  StockCurrencyMonitorApp
//
//  Created by Yongsen on 2018/10/21.
//  Copyright © 2018 SAMDev. All rights reserved.
//

import UIKit

class CurvedView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func draw(_ rect: CGRect) {
        
        let y:CGFloat = 20
        let curveTo:CGFloat = 0
        
        let myBezier = UIBezierPath()
        myBezier.move(to: CGPoint(x: 0, y: y))
        myBezier.addQuadCurve(to: CGPoint(x: rect.width, y: y), controlPoint: CGPoint(x: rect.width / 2, y: curveTo))
        myBezier.addLine(to: CGPoint(x: rect.width, y: rect.height))
        myBezier.addLine(to: CGPoint(x: 0, y: rect.height))
        myBezier.close()
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(4.0)
        UIColor.yellow.setFill()
        UIColor.yellow.setStroke()
        
        myBezier.fill()
    }
    
    // Draw a bezier to a specific point
    func drawBezierTo(x:CGFloat, y:CGFloat) {
        let bezier = UIBezierPath()
        //bezier.move(to: CGPoint(x: 0, y: 0))
        bezier.addLine(to: CGPoint(x: x, y: y))
    }
    
    // Transform original coord to down left coord
    func coordinateTransform() {
        
    }

}
