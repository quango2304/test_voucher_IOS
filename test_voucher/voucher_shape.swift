//
//  voucher_shape.swift
//  test_voucher
//
//  Created by Ngo Van Quan on 11/24/20.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import Foundation
import UIKit

class VoucherShape: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        let width: CGFloat = self.bounds.width
        let height: CGFloat = self.bounds.height
        
        path.move(to: CGPoint(x: 0, y: height/2))
        //top left
        path.addArc(withCenter: CGPoint(x: corner_radius, y: corner_radius), radius: corner_radius, startAngle: CGFloat.pi, endAngle: CGFloat.pi * 3 / 2, clockwise: true)
        //vouhcer cut top
        path.addArc(withCenter: CGPoint(x: width - right_width, y: 0), radius: -voucher_cut_radius, startAngle: 0, endAngle: .pi, clockwise: false)
        //top right
        path.addArc(withCenter: CGPoint(x: width - corner_radius, y: corner_radius), radius: corner_radius, startAngle: CGFloat.pi * 3 / 2, endAngle: 0, clockwise: true)
        //bottom right
        path.addArc(withCenter: CGPoint(x: width - corner_radius, y: height - corner_radius), radius: corner_radius, startAngle: 0, endAngle: -CGFloat.pi * 3 / 2, clockwise: true)
        //vouhcer cut bottom
        path.addArc(withCenter: CGPoint(x: width - right_width, y: height), radius: voucher_cut_radius, startAngle: 0, endAngle: .pi, clockwise: false)
        //bottom left
        path.addArc(withCenter: CGPoint(x: corner_radius, y: height - corner_radius), radius: corner_radius, startAngle: -CGFloat.pi * 3 / 2, endAngle: -CGFloat.pi, clockwise: true)
        
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath

        shapeLayer.strokeColor = self.border_color.cgColor
        shapeLayer.fillColor = self.background_color.cgColor
        shapeLayer.lineWidth = 1
        
        //dash
        let  p0 = CGPoint(x: width - right_width, y: self.voucher_cut_radius)
        let  p1 = CGPoint(x: width - right_width, y: height - self.voucher_cut_radius)
        self.layer.addSublayer(shapeLayer)
        drawDottedLine(start: p0, end: p1)
    }
    
    func drawDottedLine(start p0: CGPoint, end p1: CGPoint) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = dash_color.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.lineDashPattern = [7, 3] // 7 is the length of dash, 3 is length of the gap.

        let path = CGMutablePath()
        path.addLines(between: [p0, p1])
        shapeLayer.path = path
        self.layer.addSublayer(shapeLayer)
    }
    
    public func drawVouncher(rightWidth: CGFloat, cornerRadius: CGFloat, voucherCutRadius: CGFloat, backgroundColor: UIColor, borderColor: UIColor, dashColor: UIColor) {
        self.background_color = backgroundColor
        self.right_width = rightWidth
        self.voucher_cut_radius = voucherCutRadius
        self.background_color = backgroundColor
        self.border_color = borderColor
        self.dash_color = dashColor
        self.corner_radius = cornerRadius
        self.setNeedsDisplay()
    }
    
    private var right_width: CGFloat = 120.0
    private var corner_radius: CGFloat = 10
    private var voucher_cut_radius: CGFloat = 10
    private var background_color: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    private var border_color: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    private var dash_color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
}
