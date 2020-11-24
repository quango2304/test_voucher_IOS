//
//  uitils.swift
//  test_voucher
//
//  Created by quan on 24/11/2020.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import Foundation
import UIKit

public class Utils {
    static func drawRectangle(view: UIView, rightWidth: CGFloat, cornerRadius: CGFloat, voucherCutRadius: CGFloat, backgroundColor: UIColor, borderColor: UIColor, dashColor: UIColor)  {
        let path = UIBezierPath()
        let width: CGFloat = view.bounds.width
        let height: CGFloat = view.bounds.height
        
        path.move(to: CGPoint(x: 0, y: height - cornerRadius))
        //top left
        path.addArc(withCenter: CGPoint(x: cornerRadius, y: cornerRadius), radius: cornerRadius, startAngle: CGFloat.pi, endAngle: CGFloat.pi * 3 / 2, clockwise: true)
        //vouhcer cut top
        path.addArc(withCenter: CGPoint(x: width - rightWidth, y: 0), radius: -voucherCutRadius, startAngle: 0, endAngle: .pi, clockwise: false)
        //top right
        path.addArc(withCenter: CGPoint(x: width - cornerRadius, y: cornerRadius), radius: cornerRadius, startAngle: CGFloat.pi * 3 / 2, endAngle: 0, clockwise: true)
        //bottom right
        path.addArc(withCenter: CGPoint(x: width - cornerRadius, y: height - cornerRadius), radius: cornerRadius, startAngle: 0, endAngle: -CGFloat.pi * 3 / 2, clockwise: true)
        //vouhcer cut bottom
        path.addArc(withCenter: CGPoint(x: width - rightWidth, y: height), radius: voucherCutRadius, startAngle: 0, endAngle: .pi, clockwise: false)
        //bottom left
        path.addArc(withCenter: CGPoint(x: cornerRadius, y: height - cornerRadius), radius: cornerRadius, startAngle: -CGFloat.pi * 3 / 2, endAngle: -CGFloat.pi, clockwise: true)
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = borderColor.cgColor
        shapeLayer.fillColor = backgroundColor.cgColor
        shapeLayer.lineWidth = 1
        
        //dash
        let  p0 = CGPoint(x: width - rightWidth, y: voucherCutRadius)
        let  p1 = CGPoint(x: width - rightWidth, y: height - voucherCutRadius)
        view.layer.addSublayer(shapeLayer)
        
        drawDottedLine(start: p0, end: p1, view: view, color: dashColor)
    }

    static func drawDottedLine(start p0: CGPoint, end p1: CGPoint, view: UIView, color: UIColor) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = color.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.lineDashPattern = [7, 3] // 7 is the length of dash, 3 is length of the gap.

        let path = CGMutablePath()
        path.addLines(between: [p0, p1])
        shapeLayer.path = path
        view.layer.addSublayer(shapeLayer)
    }

}
