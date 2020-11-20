//
//  SDDSVouncher.swift
//  test_voucher
//
//  Created by Ngo Van Quan on 11/19/20.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import UIKit
import QuartzCore

class SDDSVoucher: UIView {
    private var voucherData:VoucherData?
    @IBOutlet var superView: UIView!
    @IBOutlet weak var badgeView: UIView!
    @IBOutlet weak var badgeText: UILabel!
    @IBOutlet weak var voucherCode: UILabel!
    @IBOutlet weak var actionButtonView: UIView!
    @IBOutlet weak var actionButtonText: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    
    public func bindData(data: VoucherData? = nil) {
        voucherData = data
    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        initInitialView()
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: "SDDSVoucher", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    private func initInitialView() {
        //set shadow for view
        self.superView.layer.shadowColor = UIColor.black.cgColor
        self.superView.layer.shadowPath = UIBezierPath(rect: self.superView.bounds).cgPath
        self.superView.layer.shouldRasterize = true
        self.superView.layer.shadowOpacity = 0.15
        self.superView.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        self.superView.layer.shadowRadius = 5.0
        //set bagde
        self.badgeText.text = "123456789"
        //voucher code
        self.voucherCode.text = "0x13456"

        //action button
        self.actionButtonText.text = "mua ngay"
        //test
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.05) {
            self.badgeView.roundCorners(corners: [.bottomLeft], radius: 10.0)
        }
       
    }
    
}

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

