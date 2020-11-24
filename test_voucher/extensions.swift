//
//  extensions.swift
//  test_voucher
//
//  Created by Ngo Van Quan on 11/23/20.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
            let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            layer.mask = mask
    }
    
  @IBInspectable
  var cornerRadius: CGFloat {
      get {
          return layer.cornerRadius
      }
      set {
          layer.cornerRadius = newValue
      }
  }
}
